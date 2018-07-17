package vn.vnpt.ssdc.parser;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import vn.vnpt.ssdc.voiceMail.entity.CdrCall;
import vn.vnpt.ssdc.voiceMail.entity.JoinEvent;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Component
public class TxtParser implements Parser{
    public static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    public static final SimpleDateFormat fromUser = new SimpleDateFormat("HH:mm:ss.SSS zzz EEE MMM dd yyyy");
    public static final SimpleDateFormat myFormat = new SimpleDateFormat(DATE_FORMAT);

    private static final Logger logger = LoggerFactory.getLogger(TxtParser.class);
    private static final Character DELIMITER = ',';

    @Override
    public String fileExtension() {
        return ".txt";
    }

    @Override
    public List<CdrCall> parse(InputStream inputStream) {
        List<CdrCall> cdrCalls = new LinkedList<>();
        try {
            LineNumberReader br = new LineNumberReader(new InputStreamReader(inputStream));

            String line;
            while ((line = br.readLine()) != null) {
                if (br.getLineNumber() == 1) {
                    continue;
                }
//                line = line.replaceAll("[\t]", "");
                if (!"".equals(line)) {
                    String[] subLine = line.split("\\|");
                    if (subLine[1].startsWith("CALL_END")) {
                        CdrCall cdrCall = new CdrCall();
                        cdrCall.setSrcPhoneNum(subLine[15].trim());
                        cdrCall.setDstPhoneNum(subLine[19].trim());

                        try {
//                            new Date("Tue Apr 03 09:17:42 ICT 2018");
                            if (!subLine[34].trim().equals("")) {
                            cdrCall.setSetupTime(convertFormatDate(subLine[34].trim()));
                            } else cdrCall.setSetupTime("");

                            if (!subLine[35].trim().equals("")) {
                                cdrCall.setConnectTime(convertFormatDate(subLine[35].trim()));
                            } else cdrCall.setConnectTime("");

                            if (!subLine[36].trim().equals("")) {
                                cdrCall.setReleaseTime(convertFormatDate(subLine[36].trim()));
                            } else cdrCall.setReleaseTime("");

                            if (cdrCall.getConnectTime().equals("")) cdrCall.setStatus(0);
                            else cdrCall.setStatus(1);

                            if(cdrCall.getStatus() == 1) {
                                cdrCall.setDuration(getDiffTime(cdrCall.getConnectTime(), cdrCall.getReleaseTime()));
                            }

                            if(cdrCall.getStatus() == 0) {
                                cdrCall.setDuration(getDiffTime(cdrCall.getSetupTime(), cdrCall.getReleaseTime()));
                            }

                        } catch (Exception ex) {
                            logger.error("convertDate ", ex);
                        }


                        cdrCalls.add(cdrCall);
                    }
//                    else {
//                        throw new FileFormatException("File format error");
//                    }
                }
            }
            br.close();

        } catch (IOException e) {
            logger.error("Exception when parsing txt", e);
        }
        return cdrCalls;
    }

    public static String convertFormatDate(String date){
        String reformattedStr = "";
        try{
//            date = date.substring(0,7) + date.substring(11);
            reformattedStr = myFormat.format(fromUser.parse(date));
        }catch(Exception e){
            logger.info("convertFormatDate", e);
        }
        return reformattedStr;
    }

    public String getDiffTime(String start_time, String end_time){
        String reformattedStr = "";
        try{
            DateFormat df = new SimpleDateFormat(DATE_FORMAT);
            long diff = df.parse(end_time).getTime() - df.parse(start_time).getTime();
            reformattedStr = java.lang.String.valueOf(diff / 1000);
        }catch(Exception e){
            logger.info("convertFormatDate", e);
        }
        return reformattedStr;
    }

    @Override
    public List<JoinEvent> parseJoinEvent(InputStream inputStream) {
        return null;
    }
}
