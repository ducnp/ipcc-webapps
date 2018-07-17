package vn.vnpt.ssdc.controllers;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import vn.vnpt.ssdc.voiceMail.entity.VoiceMail;
import vn.vnpt.ssdc.voiceMail.entity.VoiceMailReport;
import vn.vnpt.ssdc.voiceMail.entity.VoiceMailRepository;
import vn.vnpt.ssdc.utility.SpecificationsBuilder;
import vn.vnpt.ssdc.utility.Util;
import vn.vnpt.ssdc.utility.VoiceMailExcelView;
import vn.vnpt.ssdc.utility.VoiceMailReportView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping(path = "/api/voicemail") // This means URL's start with /demo (after Application path)
public class VoiceMailController {
     private Logger logger = LoggerFactory.getLogger(LoginController.class);

     private int totalItem = 0;
     private List<VoiceMail> voiceMails = new LinkedList<>();

     @Value("${voice_mail_host}")
     private String host;
     @Value("${server.port}")
     private String port;

     @Autowired
     private VoiceMailRepository voiceMailRepository;
     private Map<Integer, JSONObject> voiceMailData = new HashMap<Integer, JSONObject>();

     @CrossOrigin
     @GetMapping(path = "/all")
     @ResponseBody
     public List<VoiceMail> search(@RequestParam Map<String, String> mapData) {
          SpecificationsBuilder builder = new SpecificationsBuilder();
          if (mapData.isEmpty()) {
               Specification<VoiceMail> spec = builder.build();
               voiceMails = voiceMailRepository.findAll(spec);
               return Util.PaginationList(voiceMails, 1);
          } else {
               Integer page = Integer.valueOf(mapData.getOrDefault("pages", "1"));
               String strSortColumn = "";
               String strSortType = "";
               for (Map.Entry<String, String> entry : mapData.entrySet()) {
                    if (entry.getValue() != "") {
                         if (!entry.getKey().equalsIgnoreCase("pages")&&!entry.getKey().equalsIgnoreCase("pageToGo")) {
                              ///
                              if (entry.getKey().equalsIgnoreCase("brandcall")) {
                                   if (!entry.getValue().equalsIgnoreCase("all")) {
                                        builder.with("branchCall", ":", entry.getValue());
                                   }
                              } else if (entry.getKey().equalsIgnoreCase("fromDate")) {
                                   builder.with("dateRecord", ">", entry.getValue());
                              } else if (entry.getKey().equalsIgnoreCase("toDate")) {
                                   builder.with("dateRecord", "<", entry.getValue());
                              } else if (entry.getKey().equalsIgnoreCase("dateRecord")) {
                                   String[] arrDate = entry.getValue().split("-");//yyyy-mm-dd
                                   //dd/mm/yyyy
                                   String strNewDate = arrDate[2] + "/" + arrDate[1] + "/" + arrDate[0];
                                   builder.with(entry.getKey(), ":", strNewDate);
                              } else if (entry.getKey().equalsIgnoreCase("customerType")) {
                                   if (!entry.getValue().equalsIgnoreCase("all")) {
                                        if (!entry.getValue().equalsIgnoreCase("all") && !entry.getValue().equalsIgnoreCase("null")) {
                                             builder.with(entry.getKey(), ":", entry.getValue());
                                        } else {
                                             builder.with(entry.getKey(), "isNull", null);
                                        }
                                   }
                              } else if (entry.getKey().equalsIgnoreCase("status")) {
                                   if (!entry.getValue().equalsIgnoreCase("all") && !entry.getValue().equalsIgnoreCase("null")) {
                                        builder.with("statusAgentSeen", ":", entry.getValue());
                                   }
                              } else if (entry.getKey().equalsIgnoreCase("sortBy")) {
                                   strSortColumn = entry.getValue();
                              } else if (entry.getKey().equalsIgnoreCase("sort")) {
                                   strSortType = entry.getValue();
                              } else {
                                   builder.with(entry.getKey(), ":", entry.getValue());
                              }
                              ///
                         }
                    }
               }
               Specification<VoiceMail> spec = builder.build();

               if (strSortColumn != "") {
                    if (strSortType.equalsIgnoreCase("DESC")) {
                         Sort s = new Sort(Sort.Direction.DESC, strSortColumn);
                         voiceMails = voiceMailRepository.findAll(spec, s);
                         return Util.PaginationList(voiceMails, page);
                    } else {
                         Sort s = new Sort(Sort.Direction.ASC, strSortColumn);
                         voiceMails = voiceMailRepository.findAll(spec, s);
                         return Util.PaginationList(voiceMails, page);
                    }
               }


               voiceMails = voiceMailRepository.findAll(spec);
               totalItem = voiceMails.size();
               return Util.PaginationList(voiceMails, page);
          }

     }

     @CrossOrigin
     @GetMapping(path = "/total")
     @ResponseBody
     public int total() {
          return totalItem;
     }

     @CrossOrigin
     @PostMapping(path = "/export") // Map ONLY POST Requests
     public ModelAndView getMyData(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, JSONException {
          response.setContentType("application/ms-excel");
          response.setHeader("status", "200");
          response.setHeader("Content-disposition", "attachment; filename=voicemail.xls");
          return null;
     }

     @CrossOrigin
     @GetMapping(path = "/result") // Map ONLY GET Requests
     public @ResponseBody
     ModelAndView getResult(HttpServletRequest request, HttpServletResponse response) {
          Map<Integer, VoiceMail> voiceMailData = new HashMap<Integer, VoiceMail>();
          int stt = 0;
          for (VoiceMail b : voiceMails) {
               voiceMailData.put(stt, b);
               stt++;
          }
          response.setContentType("application/ms-excel");
          response.setHeader("Content-disposition", "attachment; filename=voicemail.xls");
          return new ModelAndView(new VoiceMailExcelView(), "voiceMailData", voiceMailData);
     }

     @CrossOrigin
     @GetMapping(path = "/gethost") // Map ONLY GET Requests
     public @ResponseBody
     Map<String, String> getHost(HttpServletRequest request, HttpServletResponse response) throws IOException {
          Map<String, String> mapReturn = new HashMap<>();
          mapReturn.put("host", host);
          return mapReturn;
     }

     @CrossOrigin
     @GetMapping(path = "/getport") // Map ONLY GET Requests
     public @ResponseBody
     Map<String, String> getPort(HttpServletRequest request, HttpServletResponse response) throws IOException {
          Map<String, String> mapReturn = new HashMap<>();
          mapReturn.put("port", port);
          return mapReturn;
     }

     @CrossOrigin
     @GetMapping(path = "/updateAgentNote")
     @ResponseBody
     public int updateAgentNote(@RequestParam Map<String, String> mapData) {
          String id = mapData.getOrDefault("id", null);
          String noteEdit = mapData.getOrDefault("noteEdit", "");

          SpecificationsBuilder builder = new SpecificationsBuilder();
          builder.with("id", ":", id);
          Specification<VoiceMail> spec = builder.build();

          VoiceMail voiceMail = voiceMailRepository.findOne(spec);
          try{
               voiceMail.setAgentNote(noteEdit);
               voiceMailRepository.save(voiceMail);
               return 200;
          }catch (Exception ex){
               ex.printStackTrace();
               return 400;
          }

     }


     @CrossOrigin
     @GetMapping(path = "/updateNote")
     @ResponseBody
     public int updateNote(@RequestParam Map<String, String> mapData) {
          String id = mapData.getOrDefault("id", null);
          String status = mapData.getOrDefault("status", "");
          String agentEmail = mapData.getOrDefault("agentEmail", "");
          String agentCurrent = mapData.getOrDefault("currentUser","");

          SpecificationsBuilder builder = new SpecificationsBuilder();
          builder.with("id", ":", id);
          Specification<VoiceMail> spec = builder.build();

          VoiceMail voiceMail = voiceMailRepository.findOne(spec);

          DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
          Date date = new Date();

          //
          if(voiceMail.getStatusAgentSeen().equalsIgnoreCase("1")||voiceMail.getStatusAgentSeen().equalsIgnoreCase("2")){
               if(!agentEmail.equalsIgnoreCase(agentCurrent)){
                    return 400;
               }else{
                    voiceMail.setStatusAgentSeen(status);
                    //
                    if(status.equalsIgnoreCase("1")){
                         voiceMail.setAgentEmail(agentEmail);
                    }else if(status.equalsIgnoreCase("2")){
                         voiceMail.setAgentEmail(agentEmail);
                         voiceMail.setAgentSeenTime(Util.getCurrentDateTime("yyyy-MM-dd HH:mm:ss"));
                    }
                    else{
                         voiceMail.setAgentEmail(null);
                    }
                    voiceMailRepository.save(voiceMail);
                    return 200;
               }
          }else{
               voiceMail.setStatusAgentSeen(status);
               //
               if(status.equalsIgnoreCase("1")){
                    voiceMail.setAgentEmail(agentCurrent);
               }else if(status.equalsIgnoreCase("2")){
                    voiceMail.setAgentEmail(agentCurrent);
                    voiceMail.setAgentSeenTime(Util.getCurrentDateTime("yyyy-MM-dd HH:mm:ss"));
               }
               else{
                    voiceMail.setAgentEmail(null);
               }
               voiceMailRepository.save(voiceMail);
               return 200;
          }
     }
     private String strFromDateReport;
     private String strToDateReport;

     private Integer totalAgentDone = 0;
     @CrossOrigin
     @GetMapping(path = "/viewReportModal") // Map ONLY GET Requests
     public @ResponseBody
     List<Object[]> viewReportModal(@RequestParam Map<String, String> mapData) {
          totalAgentDone = 0;
          strFromDateReport = mapData.get("fromDateReport");
          strToDateReport = mapData.get("toDateReport");

          List<Object[]> lstReturn = voiceMailRepository.exportReport(strFromDateReport,strToDateReport);
          List<Object[]> lstReturnAddStt = new ArrayList<>();
          if (lstReturn.size() > 0) {
               for (int a = 0; a < lstReturn.size(); a++) {
                    Object[] objAdd = new Object[4];
                    Object[] objTemp = lstReturn.get(a);

                    objAdd[0] = a + 1;
                    objAdd[1] = objTemp[0];
                    objAdd[2] = objTemp[1];
                    objAdd[3] = objTemp[2];
                    //
                    Integer intDone = Integer.parseInt(objTemp[1].toString());
                    totalAgentDone += intDone;
                    //
                    lstReturnAddStt.add(objAdd);
               }

          }
          return lstReturnAddStt;
     }

     @CrossOrigin
     @GetMapping(path = "/viewReportModalTotal") // Map ONLY GET Requests
     public @ResponseBody
     Map<String, String> viewReportModalTotal() {
          Map<String, String> mapReturn = new HashMap<>();
          mapReturn.put("totalAgentViewDone", totalAgentDone.toString());
          return mapReturn;
     }


     @CrossOrigin
     @GetMapping(path = "/reportModal") // Map ONLY GET Requests
     public @ResponseBody
     Map<String,String> reportModal(@RequestParam Map<String, String> mapData) {
          Map<String,String> mapReturn = new HashMap<>();
          mapReturn.put("status","ok");

          strFromDateReport = mapData.get("fromDateReport");
          strToDateReport = mapData.get("toDateReport");

          return mapReturn;
//          List<Object[]> lstReturn = voiceMailRepository.exportReport();
//          List<Object[]> lstReturnAddStt = new ArrayList<>();
//          if (lstReturn.size() > 0) {
//               for (int a = 0; a < lstReturn.size(); a++) {
//                    Object[] objAdd = new Object[3];
//                    Object[] objTemp = lstReturn.get(a);
//
//                    objAdd[0] = a;
//                    objAdd[1] = objTemp[0];
//                    objAdd[2] = objTemp[1];
//                    lstReturnAddStt.add(objAdd);
//               }
//
//          }
//          return lstReturnAddStt;
     }


     @CrossOrigin
     @GetMapping(path = "/report") // Map ONLY GET Requests
     public @ResponseBody
     ModelAndView getReport(HttpServletRequest request, HttpServletResponse response) {
          List<Object[]> lstObj = voiceMailRepository.exportReport(strFromDateReport,strToDateReport);
          Map<Integer, VoiceMailReport> jsonVoiceMailReport = new HashMap<Integer, VoiceMailReport>();
          if (!lstObj.isEmpty()) {

               int stt = 0;
               for (Object[] obj : lstObj) {
                    VoiceMailReport voiceMailReport = new VoiceMailReport();
                    voiceMailReport.agentEmail = String.valueOf(obj[0]);
                    voiceMailReport.countSeen = String.valueOf(obj[1]);
                    voiceMailReport.countInprocess = String.valueOf(obj[2]);
                    jsonVoiceMailReport.put(stt, voiceMailReport);
                    stt++;
               }

          }
          response.setContentType("application/ms-excel");
          response.setHeader("Content-disposition", "attachment; filename=voicemailReport.xls");
          return new ModelAndView(new VoiceMailReportView(), "voiceMailData", jsonVoiceMailReport);
     }


}
