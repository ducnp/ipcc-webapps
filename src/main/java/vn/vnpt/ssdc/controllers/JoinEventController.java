package vn.vnpt.ssdc.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import vn.vnpt.ssdc.voiceMail.entity.JoinEvent;
import vn.vnpt.ssdc.voiceMail.entity.JoinEventRepository;
import vn.vnpt.ssdc.parser.FileFormatException;
import vn.vnpt.ssdc.parser.FileTypeNotSupportedException;
import vn.vnpt.ssdc.parser.Parser;
import vn.vnpt.ssdc.parser.ParserFactory;
import vn.vnpt.ssdc.utility.JoinEventExcelView;
import vn.vnpt.ssdc.utility.SsgCall;
import vn.vnpt.ssdc.utility.Util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path = "/api/join-event")
public class JoinEventController {
    private Logger logger = LoggerFactory.getLogger(JoinEventController.class);

    @Autowired
    private ParserFactory parserFactory;
    @Autowired
    private JoinEventRepository joinEventRepository;

    private int totalItems = 0;
    private  List<JoinEvent> joinEvents = new ArrayList<>();

    @Value("${join_event_audio_host}")
    private String host;
    @Value("${ssg_url}")
    private String ssgUrl;
    @Value("${ivr_profile}")
    private String ivrProfile;

    @PostMapping("/upload-file")
    @ResponseBody
    public List<JoinEvent> uploadFile(@RequestParam Map<String, String> params,
                             @RequestParam(value = "file", required = false) MultipartFile externalFile) {
        //delete all before import
        joinEventRepository.deleteAll();

        List<JoinEvent> joinEvents = null;
        List<JoinEvent> joinEventsImport = new ArrayList<>();
        try {
            joinEvents = parseJoinEventData(externalFile);
            String time = Util.getCurrentDateTime("yyyy-MM-dd HH:mm:ss");
            if(joinEvents != null && joinEvents.size() > 0) {
                for (JoinEvent joinEvent : joinEvents){
                    joinEvent.setImportTime(time);
                    joinEvent.setCallStatus(-1);
                    joinEvent.setCallResult(-1);
                    joinEvent.setCallCounts(0);
                    joinEvent = joinEventRepository.save(joinEvent);
                    joinEventsImport.add(joinEvent);
                }
            }
        } catch (FileFormatException | FileTypeNotSupportedException e) {
            e.printStackTrace();
            logger.error("FileFormatException| FileTypeNotSupportedException when uplodad Event file");
        } catch (IOException e) {
            e.printStackTrace();
        }

        return joinEventsImport;
    }

    private List<JoinEvent> parseJoinEventData(MultipartFile multipartFile) throws FileTypeNotSupportedException, IOException {
        if (multipartFile != null && !multipartFile.getOriginalFilename().isEmpty()) {
            Parser parser = parserFactory.getParser(multipartFile.getOriginalFilename().toLowerCase());
            return parser.parseJoinEvent(multipartFile.getInputStream());
        }
        return null;
    }

    @CrossOrigin
    @GetMapping(path = "/total")
    @ResponseBody
    public int total() {
        return totalItems;
    }

    @CrossOrigin
    @GetMapping(path = "/search")
    @ResponseBody
    public List<JoinEvent> search(@RequestParam Map<String,String> mapData){
        Integer page = Integer.valueOf(mapData.getOrDefault("pages","1"));
        joinEvents = joinEventRepository.findAll();
        totalItems = joinEvents.size();
        return Util.PaginationList(joinEvents,page);
    }

    @CrossOrigin
    @GetMapping(path = "/export")
    public @ResponseBody
    ModelAndView getResult(HttpServletRequest request, HttpServletResponse response) {
        List<JoinEvent> joinEvents = joinEventRepository.findAll();
        Map<Integer, JoinEvent> maps = new HashMap<>();
        int stt = 0;
        for(JoinEvent joinEvent : joinEvents){
            maps.put(++stt, joinEvent);
        }
        response.setContentType("application/ms-excel");
        response.setHeader("Content-disposition", "attachment; filename=join-event-reports.xlsx");
        return new ModelAndView(new JoinEventExcelView(), "joinEventData", maps);
    }

    @CrossOrigin
    @GetMapping(path = "/get-config-audio")
    public @ResponseBody Map<String,String> getHost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Map<String,String> mapReturn =  new HashMap<>();
        mapReturn.put("host",host);
        return mapReturn;
    }

    @CrossOrigin
    @GetMapping(path = "/start-call")
    public ResponseEntity callStart(@RequestParam Map<String,String> mapData){
        Integer id = Integer.valueOf(mapData.getOrDefault("id","0"));
        if(id == 0) ResponseEntity.ok(HttpStatus.OK);
        if(id == - 1){
            //trường hợp gọi cho tất cả
            List<JoinEvent> list = joinEventRepository.findByCallStatusIn(new int[]{-1, 2});
            for(JoinEvent joinEvent : list){
                joinEvent.setCallStatus(0);
                joinEvent.setCallCounts(0);
                joinEventRepository.save(joinEvent);
            }
        }else{
            //trường hợp chỉ gọi cho số có id tương ứng
            JoinEvent joinEvent = joinEventRepository.findOne(id);
            Map<String, String> data = new HashMap<>();
            data.put("Id", String.valueOf(joinEvent.getId()));
            String cmd = SsgCall.buildRequest(ivrProfile, joinEvent.getCustomerPhone(), data);
            boolean result = SsgCall.request(ssgUrl, cmd);
            if(result){
                joinEvent.setCallCounts(joinEvent.getCallCounts() + 1);
            }else{
                joinEvent.setCallStatus(2);
            }
            joinEventRepository.save(joinEvent);
        }

        return ResponseEntity.ok(HttpStatus.OK);
    }

    @CrossOrigin
    @GetMapping(path = "/stop-call")
    public ResponseEntity callStop(){
        List<JoinEvent> list = joinEventRepository.findByCallStatusIn(new int[]{0});
        for(JoinEvent joinEvent : list){
            joinEvent.setCallStatus(-1);
            joinEventRepository.save(joinEvent);
        }

        return ResponseEntity.ok(HttpStatus.OK);
    }
}
