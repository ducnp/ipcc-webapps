package vn.vnpt.ssdc.utility;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import vn.vnpt.ssdc.voiceMail.entity.JoinEvent;
import vn.vnpt.ssdc.voiceMail.entity.JoinEventRepository;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class ScheduledTasks {
    private Logger logger = LoggerFactory.getLogger(ScheduledTasks.class);

    @Autowired
    private JoinEventRepository joinEventRepository;

    @Value("${ssg_url}")
    private String ssgUrl;
    @Value("${ivr_profile}")
    private String ivrProfile;
    @Value("${max_attempts}")
    private int maxAttempts;

    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");

    @Scheduled(fixedRate = 30 * 1000)
    public void callSsg() throws InterruptedException {
        JoinEvent joinEvent = joinEventRepository.
                findFirstByCallStatusInAndCallResultInAndCallCountsLessThanOrderByCallCountsAsc
                        (new int[]{0, 1}, new int[]{-1},maxAttempts);
        if(joinEvent != null) {
            logger.info("FIND FIRST : " + joinEvent.getId());
            Map<String, String> data = new HashMap<>();
            data.put("Id", String.valueOf(joinEvent.getId()));
            String cmd = SsgCall.buildRequest(ivrProfile, joinEvent.getCustomerPhone(), data);
            boolean result = SsgCall.request(ssgUrl, cmd);
            if(!result){
                //gọi k thành công
                joinEvent.setCallStatus(2);
                joinEvent.setCallCounts(joinEvent.getCallCounts() + 1);
                joinEventRepository.save(joinEvent);
                logger.error("Not Success when Call for phoneNumber: " + joinEvent.getCustomerPhone() + " with Id: " + joinEvent.getId());
            }else{
                joinEvent.setCallStatus(1);
                joinEvent.setCallCounts(joinEvent.getCallCounts() + 1);
                joinEventRepository.save(joinEvent);
                logger.info("Call for phoneNumber: " + joinEvent.getCustomerPhone() + " with Id: " + joinEvent.getId());
            }
        }else{
            //logger.info("FIND FIRST NULL");
            //trường hợp tất cả đã được gọi thì bắt đầu: thống kê toàn bộ các bản ghi gọi đủ số lần ~> "CallResult" = 0: Không nghe máy
            //Sleep 3 phút trước khi tiến hành thống kê
            Thread.sleep(30 * 1000);
            List<JoinEvent> list = joinEventRepository.findByCallStatusInAndCallCountsGreaterThanEqual(new int[]{1}, maxAttempts);
            for(JoinEvent item : list){
                item.setCallStatus(1);//cuộc gọi thành công rồi
                item.setCallResult(0);//khách hàng k nghe máy mà thôi
                joinEventRepository.save(item);
            }
        }
    }
}
