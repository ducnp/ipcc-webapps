package vn.vnpt.ssdc.controllers;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import vn.vnpt.ssdc.outbound.entity.Birthday;
import vn.vnpt.ssdc.outbound.entity.CC247other;
import vn.vnpt.ssdc.outbound.entity.CampaignName;
import vn.vnpt.ssdc.outbound.entity.Survey;
import vn.vnpt.ssdc.outbound.repo.BirthdayRepository;
import vn.vnpt.ssdc.outbound.repo.CC247otherRepository;
import vn.vnpt.ssdc.outbound.repo.CampaignNameRepository;
import vn.vnpt.ssdc.outbound.repo.SurveyRepository;
import vn.vnpt.ssdc.utility.BirthdayExcelView;
import vn.vnpt.ssdc.utility.OtherExcelView;
import vn.vnpt.ssdc.utility.SurveyExcelView;
import vn.vnpt.ssdc.utility.Util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping(path = "/api/outbound")
public class OutboundControler {
     private Logger logger = LoggerFactory.getLogger(LoginController.class);
     private int totalItem = 0;

     @Value("${server.host}")
     private String host;
     @Value("${server.port}")
     private String port;
     @Value("${app_name}")
     private String app_name;

     @Autowired
     private SurveyRepository surveyRepository;
     @Autowired
     private BirthdayRepository birthdayRepository;
     @Autowired
     private CC247otherRepository cc247otherRepository;
     @Autowired
     private CampaignNameRepository campaignNameRepository;

     private List<Survey> import_list_survey = new LinkedList<>();
     private List<Birthday> import_list_birthday = new LinkedList<>();
     private List<CC247other> import_list_other = new LinkedList<>();
     private String fileName;
     ///
     private String viewCampaignName = "";
     private List<Object> lstHeader = new ArrayList<>();
     private List<Object> lstHeader_database = new ArrayList<>();
     private List<Object[]> reviewList = new LinkedList<>();
     private List<Object[]> reviewListOther = new LinkedList<>();
     private boolean checkReviewReport = true;
     ///
     private Map<String, String> mapDefaultParams = new HashMap<>();

     //////////////// DefaultParams
     private Birthday updateDefaultBirthday(Birthday birthday) {
          birthday.setContact_info_type(Integer.parseInt(mapDefaultParams.get("modalContactInfoType")));
          birthday.setRecord_type(Integer.parseInt(mapDefaultParams.get("modalRecordType")));
          birthday.setRecord_status(Integer.parseInt(mapDefaultParams.get("modalRecordStatus")));
          birthday.setCall_result(Integer.parseInt(mapDefaultParams.get("modalCallResult")));
          birthday.setAttempt(Integer.parseInt(mapDefaultParams.get("modalAttempt")));
          birthday.setDaily_from(Integer.parseInt(mapDefaultParams.get("modalDailyFrom")));
          birthday.setDaily_till(Integer.parseInt(mapDefaultParams.get("modalDailyTill")));
          birthday.setTz_dbid(Integer.parseInt(mapDefaultParams.get("modalTzBbid")));

          return birthday;
     }

     private Survey updateDefaultSurvey(Survey survey) {
          survey.setContact_info_type(Integer.parseInt(mapDefaultParams.get("modalContactInfoType")));
          survey.setRecord_type(Integer.parseInt(mapDefaultParams.get("modalRecordType")));
          survey.setRecord_status(Integer.parseInt(mapDefaultParams.get("modalRecordStatus")));
          survey.setCall_result(Integer.parseInt(mapDefaultParams.get("modalCallResult")));
          survey.setAttempt(Integer.parseInt(mapDefaultParams.get("modalAttempt")));
          survey.setDaily_from(Integer.parseInt(mapDefaultParams.get("modalDailyFrom")));
          survey.setDaily_till(Integer.parseInt(mapDefaultParams.get("modalDailyTill")));
          survey.setTz_dbid(Integer.parseInt(mapDefaultParams.get("modalTzBbid")));

          return survey;
     }

     private CC247other updateDefaultOther (CC247other cc247other){
          cc247other.setContact_info_type(Integer.parseInt(mapDefaultParams.get("modalContactInfoType")));
          cc247other.setRecord_type(Integer.parseInt(mapDefaultParams.get("modalRecordType")));
          cc247other.setRecord_status(Integer.parseInt(mapDefaultParams.get("modalRecordStatus")));
          cc247other.setCall_result(Integer.parseInt(mapDefaultParams.get("modalCallResult")));
          cc247other.setAttempt(Integer.parseInt(mapDefaultParams.get("modalAttempt")));
          cc247other.setDaily_from(Integer.parseInt(mapDefaultParams.get("modalDailyFrom")));
          cc247other.setDaily_till(Integer.parseInt(mapDefaultParams.get("modalDailyTill")));
          cc247other.setTz_dbid(Integer.parseInt(mapDefaultParams.get("modalTzBbid")));

          return cc247other;
     }

     @CrossOrigin
     @GetMapping(path = "/changeDefaultParams")
     public @ResponseBody
     void ChangeDefaultParams(@RequestParam Map<String, String> mapData) throws IOException, JSONException {
//          $scope.modalContactInfoType = 1;
//          $scope.modalRecordType = 2;
//          $scope.modalRecordStatus = 1;
//          $scope.modalCallResult = 28;
//          $scope.modalAttempt = 0;
//          $scope.modalDailyFrom = 28800;
//          $scope.modalDailyTill = 72000;
//          $scope.modalTzBbid = 111;
          mapDefaultParams = mapData;
     }

     //////////////// Other Settings
     @CrossOrigin
     @GetMapping(path = "/removeFile")
     public @ResponseBody
     Map<String, String> removeFile(@RequestParam Map<String, String> mapData) throws IOException, JSONException {
          Map<String, String> mapReturn = new HashMap<>();
          String strReturn = "";

          String strTable = mapData.get("removeTable");
          String strRemoveDate = mapData.get("removeDate");
          String strRemoveFile = mapData.get("removeFile");
          int defaultCallResult = 28;

          if (strTable.equalsIgnoreCase("birthday")) {
               List<Long> ids = birthdayRepository.findByHisory(strRemoveFile, strRemoveDate);
               if (ids.size() > 0) {
                    boolean blcheck = true;
                    for (int i = 0; i < ids.size(); i++) {
                         if (birthdayRepository.findOne(ids.get(i)).getCall_result() != defaultCallResult) {
                              blcheck = false;
                              break;
                         }
                    }
                    if (blcheck) {
                         birthdayRepository.deleteByIdIn(ids);
                         strReturn = "OK";
                    } else {
                         strReturn = "NO";
                    }
               }
          } else if (strTable.equalsIgnoreCase("survey")) {
               List<Long> ids = surveyRepository.findByHisory(strRemoveFile, strRemoveDate);
               if (ids.size() > 0) {
                    boolean blcheck = true;
                    for (int i = 0; i < ids.size(); i++) {
                         if (surveyRepository.findOne(ids.get(i)).getCall_result() != defaultCallResult) {
                              blcheck = false;
                              break;
                         }
                    }
                    if (blcheck) {
                         surveyRepository.deleteByIdIn(ids);
                         strReturn = "OK";
                    } else {
                         strReturn = "NO";
                    }
               }
          } else {
               List<Long> ids = cc247otherRepository.findByHistory(strRemoveFile, strRemoveDate);
               if (ids.size() > 0) {
                    boolean blcheck = true;
                    for (int i = 0; i < ids.size(); i++) {
                         if (cc247otherRepository.findOne(ids.get(i)).getCall_result() != defaultCallResult) {
                              blcheck = false;
                              break;
                         }
                    }
                    if (blcheck) {
                         cc247otherRepository.deleteByIdIn(ids);
                         strReturn = "OK";
                    } else {
                         strReturn = "NO";
                    }
               }
          }
          mapReturn.put("result", strReturn);
          return mapReturn;
     }

     @CrossOrigin
     @GetMapping(path = "/getCampaignNameExport")
     public @ResponseBody
     void getCampaignNameExport(@RequestParam Map<String, String> mapData) throws IOException, JSONException {
          viewCampaignName = mapData.get("table");
     }


     @CrossOrigin
     @GetMapping(path = "/exportOther") // Map ONLY GET Requests
     public @ResponseBody
     ModelAndView getExportOther(HttpServletRequest request, HttpServletResponse response) {
          Map<Integer, CC247other> cc247Data = new HashMap<Integer, CC247other>();
          Iterable<CC247other> cc247others = cc247otherRepository.findAllByCampaignName(viewCampaignName);
          int stt = 0;
          for (CC247other b : cc247others) {
               cc247Data.put(stt, b);
               stt++;
          }
          response.setContentType("application/ms-excel");
          response.setHeader("Content-disposition", "attachment; filename=" + viewCampaignName + ".xls");
          OtherExcelView otherExcelView = new OtherExcelView();
          otherExcelView.campaignNameRepository = campaignNameRepository;
          return new ModelAndView(otherExcelView, "cc247Data", cc247Data);
     }

     @CrossOrigin
     @GetMapping(path = "/getCampaignOther")
     public @ResponseBody
     List<Object> getCampaignOther() throws IOException, JSONException {
          return cc247otherRepository.getCampaignOther();
     }


     @CrossOrigin
     @GetMapping(path = "/importOther")
     public @ResponseBody
     Map<String, String> importOther() throws IOException, JSONException {
          if (!reviewListOther.isEmpty()) {
               import_list_other.clear();
               Map<String, String> iResult = new HashMap<>();
               String importTime = Util.getCurrentDateTime("yyyy-MM-dd HH:mm:ss");
               String contact_campaign = fileName + "_" + Util.getCurrentDateTime("ddMMyyyy");
               String log = "Import result\n";
               String errorLog = "No Error";
               Integer numSuccess = 0;
               Integer numFail = 0;
               Integer total = reviewListOther.size();
               ///
               try {
                    //viewCampaignName
                    //lstHeader_database
                    //lstHeader
                    //reviewListOther
                    List<CC247other> lstData = new ArrayList<>();
                    for (int i = 0; i < reviewListOther.size(); i++) {
                         ///
                         Object[] data = reviewListOther.get(i);
                         ///
                         CC247other cc247other = new CC247other();
                         cc247other.setCampaign_name(Util.convertUTF8_ASCI(viewCampaignName));
                         cc247other.setContact_campaign(contact_campaign);
                         cc247other.setDate_campaign(importTime);

                         ///Xử lý các dữ liệu khác
                         for (int index = 0; index < data.length - 1; index++) {
                              String strColumnDB = lstHeader_database.get(index).toString();
                              try {
                                   String strData = data[index].toString();
                                   mapColumnWithData(cc247other, strColumnDB, strData);
                              } catch (Exception ex) {
                                   ex.toString();
                              }

                         }
                         ///Xử lý số điện thoại
                         String strData = data[8].toString();
                         if (strData.contains(",")) {
                              String[] arrPhone = strData.split(",");
                              int intChain_n = 0;
                              int maxChainId = cc247otherRepository.getMaxChaniId() + 1;
                              for (int a = 0; a < arrPhone.length; a++) {
                                   ///
                                   long record_id = cc247otherRepository.getMaxRecordId() + 1;
                                   cc247other.setId(record_id);
                                   ///
                                   cc247other.setContactInfo(arrPhone[a]);
                                   ///
                                   cc247other.setChainid(maxChainId);
                                   cc247other.setChain_n(intChain_n);
                                   ///
                                   cc247other = updateDefaultOther(cc247other);
                                   ///
                                   cc247otherRepository.save(cc247other);
                                   intChain_n++;
                                   numSuccess++;
                              }
                         } else {
                              long record_id = cc247otherRepository.getMaxRecordId() + 1;
                              cc247other.setId(record_id);
                              cc247other.setContactInfo(strData);
                              int maxChainId = cc247otherRepository.getMaxChaniId() + 1;
                              cc247other.setChainid(maxChainId);
                              cc247other.setChain_n(0);
                              ///
                              cc247other = updateDefaultOther(cc247other);
                              ///
                              cc247otherRepository.save(cc247other);
                              numSuccess++;
                         }
                    }
                    //
                    JSONArray jsonArray = new JSONArray();
                    for (int i = 0; i < lstHeader.size(); i++) {
                         jsonArray.put(lstHeader.get(i));
                    }

                    JSONArray jsonArray_db = new JSONArray();
                    for (int i = 0; i < lstHeader_database.size(); i++) {
                         jsonArray_db.put(lstHeader_database.get(i));
                    }

                    List<CampaignName> lstCampaignNames = campaignNameRepository.findAllByName(viewCampaignName);
                    if (lstCampaignNames.size() > 0) {
                         CampaignName campaignName = lstCampaignNames.get(0);
                         campaignName.setHeader(jsonArray.toString());
                         campaignName.setHeaderDb(jsonArray_db.toString());
                         campaignNameRepository.save(campaignName);
                    } else {
                         String strHeader = jsonArray.toString();
                         CampaignName campaignName = new CampaignName();
                         campaignName.setName(viewCampaignName);
                         campaignName.setHeader(strHeader);
                         campaignName.setHeaderDb(jsonArray_db.toString());
                         campaignNameRepository.save(campaignName);
                    }
                    //
               } catch (Exception e) {
                    e.printStackTrace();
                    StringWriter errors = new StringWriter();
                    e.printStackTrace(new PrintWriter(errors));
                    iResult.put("total", " Report Result" + "\n" +
                            " Error: " + errors.toString() + "\n" +
                            " Success: 0" + "\n" +
                            " Fail: 0" + "\n");
                    return iResult;
               }
               int numPage = Util.getNumPage(import_list_birthday);
               iResult.put("total",
                       " Report Result" + "\n" +
                               " Error: " + errorLog + "\n" +
                               " Success: " + Integer.toString(numSuccess) + "\n" +
                               " Fail: " + Integer.toString(numFail) + "\n" +
                               " Contact_campaign: " + contact_campaign + "\n" +
                               " Date_campaign: " + importTime);
               return iResult;
          }
          return null;
     }

     private CC247other mapColumnWithData(CC247other cc247other, String strColumn, String strData) throws UnsupportedEncodingException {
          if (strColumn.equalsIgnoreCase("campaign_date")) {
               cc247other.setCampaign_date(strData);
          }
          if (strColumn.equalsIgnoreCase("customer_id")) {
               int index = strData.indexOf(".");
               if (index != -1) {
                    strData = strData.substring(0, index);
               }
               cc247other.setCustomer_id(Integer.parseInt(strData));
          }
          if (strColumn.equalsIgnoreCase("customer_name")) {
               cc247other.setCustomer_name(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("gender")) {
               cc247other.setGender(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("tax_id")) {
               cc247other.setTax_id(strData);
          }
          if (strColumn.equalsIgnoreCase("brithday")) {
               cc247other.setBrithday(strData);
          }
          if (strColumn.equalsIgnoreCase("title")) {
               cc247other.setTitle(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("email")) {
               cc247other.setEmail(strData);
          }
          if (strColumn.equalsIgnoreCase("address")) {
               cc247other.setAddress(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("account_number")) {
               cc247other.setAccount_number(strData);
          }
          if (strColumn.equalsIgnoreCase("card_number")) {
               cc247other.setCard_number(strData);
          }
          if (strColumn.equalsIgnoreCase("note")) {
               cc247other.setNote(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_1")) {
               cc247other.setField_1(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_2")) {
               cc247other.setField_2(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_3")) {
               cc247other.setField_3(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_4")) {
               cc247other.setField_4(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_5")) {
               cc247other.setField_5(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_6")) {
               cc247other.setField_6(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_7")) {
               cc247other.setField_7(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_8")) {
               cc247other.setField_8(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_9")) {
               cc247other.setField_9(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_10")) {
               cc247other.setField_10(Util.convertUTF8_ASCI(strData));
          }
          if (strColumn.equalsIgnoreCase("field_11")) {
               int index = strData.indexOf(".");
               if (index != -1) {
                    strData = strData.substring(0, index);
               }
               cc247other.setField_11(Integer.parseInt(strData));
          }
          if (strColumn.equalsIgnoreCase("field_12")) {
               int index = strData.indexOf(".");
               if (index != -1) {
                    strData = strData.substring(0, index);
               }
               cc247other.setField_12(Integer.parseInt(strData));
          }
          if (strColumn.equalsIgnoreCase("field_13")) {
               int index = strData.indexOf(".");
               if (index != -1) {
                    strData = strData.substring(0, index);
               }
               cc247other.setField_13(Integer.parseInt(strData));
          }
          if (strColumn.equalsIgnoreCase("field_14")) {
               int index = strData.indexOf(".");
               if (index != -1) {
                    strData = strData.substring(0, index);
               }
               cc247other.setField_14(Integer.parseInt(strData));
          }
          if (strColumn.equalsIgnoreCase("field_15")) {
               int index = strData.indexOf(".");
               if (index != -1) {
                    strData = strData.substring(0, index);
               }
               cc247other.setField_15(Integer.parseInt(strData));
          }
          if (strColumn.equalsIgnoreCase("field_16")) {
               int index = strData.indexOf(".");
               if (index != -1) {
                    strData = strData.substring(0, index);
               }
               cc247other.setField_16(Integer.parseInt(strData));
          }
          if (strColumn.equalsIgnoreCase("field_17")) {
               cc247other.setField_17(strData);
          }
          if (strColumn.equalsIgnoreCase("field_18")) {
               cc247other.setField_18(strData);
          }
          if (strColumn.equalsIgnoreCase("field_19")) {
               cc247other.setField_19(strData);
          }
          if (strColumn.equalsIgnoreCase("field_20")) {
               cc247other.setField_20(strData);
          }
          if (strColumn.equalsIgnoreCase("field_21")) {
               cc247other.setField_21(strData);
          }
          if (strColumn.equalsIgnoreCase("field_22")) {
               cc247other.setField_22(strData);
          }
          if (strColumn.equalsIgnoreCase("field_23")) {
               cc247other.setField_23(strData);
          }
          if (strColumn.equalsIgnoreCase("field_24")) {
               cc247other.setField_24(strData);
          }
          if (strColumn.equalsIgnoreCase("field_25")) {
               cc247other.setField_25(strData);
          }
          if (strColumn.equalsIgnoreCase("field_26")) {
               cc247other.setField_26(strData);
          }
          if (strColumn.equalsIgnoreCase("field_27")) {
               cc247other.setField_27(strData);
          }
          if (strColumn.equalsIgnoreCase("field_28")) {
               cc247other.setField_28(strData);
          }
          if (strColumn.equalsIgnoreCase("field_29")) {
               cc247other.setField_29(strData);
          }
          ///
          return cc247other;
     }

     @CrossOrigin
     @PostMapping(path = "/reviewOther")
     public @ResponseBody
     List<Object[]> reviewOther(@RequestParam("file") MultipartFile file) throws IOException {
          ///
          viewCampaignName = "";
          lstHeader.clear();
          lstHeader_database.clear();
          checkReviewReport = true;
          reviewListOther.clear();
          ///
          String strCampainName = "";
          String strError = "";
          List<Object[]> lstObjReturn = new ArrayList<>();
          Map<Integer, String> mapCustomerHeader = new HashMap<>();
          Map<Integer, String> mapDatabaseHeader = new HashMap<>();
          ///Add status column
          Set<Integer> columnInUse = new HashSet<>();
          columnInUse.add(43);
          for (int i = 0; i < 14; i++) {
               columnInUse.add(i);
          }

          ///
          Integer[] intIntList = {2, 24, 25, 26, 27, 28, 29};
          ArrayList<Integer> intList = new ArrayList<Integer>(Arrays.asList(intIntList));

          Integer[] intFloatList = {35, 36, 37, 38, 39, 40, 41, 42};
          ArrayList<Integer> floatList = new ArrayList<Integer>(Arrays.asList(intFloatList));

          Integer[] intDateList = {1, 6, 30, 31, 32, 33, 34};
          ArrayList<Integer> dateList = new ArrayList<Integer>(Arrays.asList(intDateList));
          ///

          fileName = file.getOriginalFilename();
          List<Object[]> lstObjectReturn = new ArrayList<>();
          try {
               InputStream in = file.getInputStream();
               Workbook workbook = new XSSFWorkbook(in);
               Sheet datatypeSheet = workbook.getSheetAt(0);
               int numOfRows = datatypeSheet.getPhysicalNumberOfRows();
               // Nếu ko có dữ liệu thì return null
               if (numOfRows < 4) {
                    return null;
               }
               //Lấy campain name
               Row rCampainName = datatypeSheet.getRow(0);
               Cell cCampainName = rCampainName.getCell(0);
               strCampainName = cCampainName.getStringCellValue();
               //
               if (strCampainName.equalsIgnoreCase("")) {
                    //Không có campainName
                    Object[] objReturn = new Object[1];
                    objReturn[0] = "Must have Campaign Name";
                    lstObjReturn.add(objReturn);
                    return lstObjReturn;
               } else {
                    //Lấy tên cột sử dụng trong database
                    Row rowDatabaseHeader = datatypeSheet.getRow(3);
                    for (int i = 0; i < 43; i++) {
                         Cell currentCell = rowDatabaseHeader.getCell(i);
                         String strCustomerHeader = currentCell.getStringCellValue();
                         mapDatabaseHeader.put(i, strCustomerHeader);
                    }
                    //Lấy tên cột định danh khách hàng
                    Row rowCustomerHeader = datatypeSheet.getRow(1);
                    for (int i = 0; i < 43; i++) {
                         Cell currentCell = rowCustomerHeader.getCell(i);
                         String strCustomerHeader = currentCell.getStringCellValue();
                         mapCustomerHeader.put(i, strCustomerHeader);
                    }
                    //
                    for (int rowNum = 4; rowNum < numOfRows; rowNum++) {
                         Row row = datatypeSheet.getRow(rowNum);

                         int numOfCellPerRow = rowCustomerHeader.getLastCellNum();
                         //Validate
                         Object[] data = new Object[44];
                         data[43] = "";

                         boolean validate = true;
                         //
                         if (row != null) {
                              for (int cellNum = 0; cellNum < numOfCellPerRow; cellNum++) {
                                   int c = cellNum + 1;
                                   Cell currentCell = row.getCell(cellNum);

                                   //Nếu không null hoặc trống

                                   if (cellNum == 8) {
                                        if (currentCell == null || currentCell.getStringCellValue().trim().equalsIgnoreCase("")) {
                                             data[cellNum] = "ERROR";
                                             validate = false;
                                             checkReviewReport = false;
                                             data[43] += "\r\nCột [" + mapCustomerHeader.get(cellNum) + "] dòng [" + rowNum + "] thiếu số điện thoại , ít nhất phải có 1 số điện thoại";
                                        }
                                   }

                                   if (currentCell != null && currentCell.getCellType() != Cell.CELL_TYPE_BLANK) {
                                        int indexInUse = currentCell.getColumnIndex();
                                        columnInUse.add(indexInUse);

                                        try {
                                             //intList kiểm tra có phải int hay không
                                             if (intList.contains(cellNum)) {
                                                  data[cellNum] = Integer.toString((int) currentCell.getNumericCellValue());
                                             }
                                        } catch (Exception ex) {
                                             data[cellNum] = "ERROR";
                                             validate = false;
                                             checkReviewReport = false;
                                             data[43] += "\r\nCột [" + mapCustomerHeader.get(cellNum) + "] dòng [" + rowNum + "] sai định dạng kiểu Int";
                                        }
                                        ////
                                        try {
                                             //floatList kiểm tra có phải float hay không
                                             if (floatList.contains(cellNum)) {
                                                  data[cellNum] = Float.toString((float) currentCell.getNumericCellValue());
                                             }
                                             //
                                        } catch (Exception ex) {
                                             data[cellNum] = "ERROR";
                                             validate = false;
                                             checkReviewReport = false;
                                             data[43] += "\r\nCột [" + mapCustomerHeader.get(cellNum) + "] dòng [" + rowNum + "] sai định dạng kiểu Float";
                                        }
                                        //
                                        ////
                                        try {
                                             //floatList kiểm tra có phải float hay không
                                             if (dateList.contains(cellNum)) {
                                                  Date date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(currentCell.getStringCellValue());
                                                  data[cellNum] = currentCell.getStringCellValue();
                                             }
                                             //
                                        } catch (Exception ex) {
                                             data[cellNum] = "ERROR";
                                             validate = false;
                                             checkReviewReport = false;
                                             data[43] += "\r\nCột [" + mapCustomerHeader.get(cellNum) + "] dòng [" + rowNum + "] sai định dạng kiểu Date";
                                        }
                                        //
                                        if (currentCell.getCellType() == currentCell.CELL_TYPE_STRING) {
                                             data[cellNum] = currentCell.getStringCellValue();
                                        }
                                        if (currentCell.getCellType() == currentCell.CELL_TYPE_NUMERIC) {
                                             data[cellNum] = currentCell.getNumericCellValue();
                                        }
                                   }
                              }
                              if (validate) {
                                   data[43] = "OK";
                              }
                              if (!data[43].toString().equalsIgnoreCase("OK")) {
                                   data[43] = data[43].toString().substring(2);
                              }
                              reviewListOther.add(data);
                         }
                    }
                    ///Lấy tên campaign name
                    viewCampaignName = strCampainName;
                    ///Filter lấy header
                    List<Integer> listColumnInUse = new ArrayList<Integer>(columnInUse);
                    Collections.sort(listColumnInUse);
                    for (int i = 0; i < listColumnInUse.size(); i++) {
                         Integer clUse = listColumnInUse.get(i);
                         String strHeader = mapCustomerHeader.get(clUse);
                         lstHeader.add(strHeader);
                         String strDatabaseHeader = mapDatabaseHeader.get(clUse);
                         lstHeader_database.add(strDatabaseHeader);
                    }
                    lstHeader.set(columnInUse.size() - 1, "Status Check");
                    ///Filter lấy dữ liệu khác trắng
                    List<Integer> lstColumnInUse = new ArrayList<Integer>(columnInUse);

                    for (int a = 0; a < reviewListOther.size(); a++) {
                         Object[] objParents = reviewListOther.get(a);
                         List<Object> lstObject = new ArrayList<>();
                         for (int b = 0; b < objParents.length; b++) {
                              Object objChild = objParents[b];
                              for (int c = 0; c < lstColumnInUse.size(); c++) {
                                   if (b == lstColumnInUse.get(c)) {
                                        lstObject.add(objChild);
                                   }
                              }
                         }
                         lstObjectReturn.add(lstObject.toArray());
                    }
               }
               //
               reviewListOther = new ArrayList<>();
               reviewListOther = lstObjectReturn;
               //
          } catch (Exception e) {
               e.printStackTrace();
               return null;
          }
          return lstObjectReturn;
     }

     @CrossOrigin
     @GetMapping(path = "/campaignName")
     @ResponseBody
     public Map<String, String> viewCampaignName() {
          Map<String, String> mapReturn = new HashMap<>();
          mapReturn.put("campaignName", viewCampaignName);
          return mapReturn;
     }

     @CrossOrigin
     @GetMapping(path = "/viewHeader")
     @ResponseBody
     public List<Object> viewHeader() {
          return lstHeader;
     }


     @CrossOrigin
     @GetMapping(path = "/formOther") // Map ONLY GET Requests
     public @ResponseBody
     Map<String, String> getDownloadOther(HttpServletResponse response) throws IOException {
          String str = "http://" + host +":" + port + "/other_form.xlsx";
          Map<String, String> mapReturn = new HashMap<>();
          mapReturn.put("url", str);
          return mapReturn;
     }

     @CrossOrigin
     @GetMapping(path = "/checkOkImport")
     @ResponseBody
     public Map<String, String> checkOkImport() {
          Map<String, String> mapReturn = new HashMap<>();
          if (checkReviewReport) {
               mapReturn.put("checkOkImport", "OK");
          } else {
               mapReturn.put("checkOkImport", "NO");
          }

          return mapReturn;
     }
     ////////////////

     @CrossOrigin
     @GetMapping(path = "/total")
     @ResponseBody
     public int total() {
          return totalItem;
     }

     @CrossOrigin
     @PostMapping(path = "/reviewSurvey")
     public @ResponseBody
     List<Object[]> reviewSurvey(@RequestParam("file") MultipartFile file) throws IOException {
          //
          checkReviewReport = true;
          //
          reviewList.clear();
          fileName = file.getOriginalFilename();
          InputStream in = file.getInputStream();
          Integer[] notNulls = {1, 2, 5, 6};
          Integer[] strings = {1, 3, 4, 5};
          ArrayList<Integer> notNullList = new ArrayList<Integer>(Arrays.asList(notNulls));
          ArrayList<Integer> stringsList = new ArrayList<Integer>(Arrays.asList(strings));
          try {
               Workbook workbook = new XSSFWorkbook(in);
               Sheet datatypeSheet = workbook.getSheetAt(0);
               int numOfRows = datatypeSheet.getPhysicalNumberOfRows();
               if (numOfRows < 2) {
                    return null;
               }
               for (int rowNum = 1; rowNum < numOfRows; rowNum++) {
                    Row row = datatypeSheet.getRow(rowNum);
                    int numOfCellPerRow = row.getLastCellNum();
                    if (numOfCellPerRow != 7) {
                         return null;
                    }
                    Object[] data = new Object[12];
                    boolean validate = true;
                    for (int cellNum = 0; cellNum < numOfCellPerRow; cellNum++) {
                         int c = cellNum + 1;
                         Cell currentCell = row.getCell(cellNum);
                         if (currentCell != null && currentCell.getCellType() != Cell.CELL_TYPE_BLANK) {
                              if (currentCell.getCellType() == currentCell.CELL_TYPE_STRING) {
                                   data[cellNum] = currentCell.getStringCellValue();
                              } else if (currentCell.getCellType() == currentCell.CELL_TYPE_NUMERIC) {
                                   if (stringsList.contains(cellNum)) {
                                        data[cellNum] = Integer.toString((int) currentCell.getNumericCellValue());
                                   } else {
                                        data[cellNum] = (int) currentCell.getNumericCellValue();
                                   }
                              }
                         } else {
                              if (notNullList.contains(cellNum)) {
                                   validate = false;
                                   checkReviewReport = false;
                                   data[11] = "Cột thứ " + c + " bị trống.\n";
                              }
                         }
                    }
                    if (data[3] == null && data[4] == null) {
                         validate = false;
                         checkReviewReport = false;
                         data[11] = "Cần ít nhất một số điện thoại";
                    }

                    if (validate) {
                         data[11] = "OK";
                    }
                    reviewList.add(data);
               }
          } catch (Exception e) {
               e.printStackTrace();
               return reviewList;
          }
          return reviewList;
     }

     @CrossOrigin
     @PostMapping(path = "/reviewBirthday")
     public @ResponseBody
     List<Object[]> reviewBirthday(@RequestParam("file") MultipartFile file) throws IOException {
          //
          checkReviewReport = true;
          //
          reviewList.clear();
          Integer[] notNulls = {1, 2, 3, 6, 7, 12};
          ArrayList<Integer> notNullList = new ArrayList<Integer>(Arrays.asList(notNulls));
          fileName = file.getOriginalFilename();
          try {
               InputStream in = file.getInputStream();
               Workbook workbook = new XSSFWorkbook(in);
               Sheet datatypeSheet = workbook.getSheetAt(0);
               int numOfRows = datatypeSheet.getPhysicalNumberOfRows();
               if (numOfRows < 3) {
                    return null;
               }
               for (int rowNum = 2; rowNum < numOfRows; rowNum++) {
                    Row row = datatypeSheet.getRow(rowNum);
                    int numOfCellPerRow = row.getLastCellNum();
                    if (numOfCellPerRow != 13) {
                         return null;
                    }
                    Object[] data = new Object[18];
                    boolean validate = true;
                    data[17] = "";
                    for (int cellNum = 0; cellNum < numOfCellPerRow; cellNum++) {
                         int c = cellNum + 1;
                         Cell currentCell = row.getCell(cellNum);
                         if (currentCell != null && currentCell.getCellType() != Cell.CELL_TYPE_BLANK) {
                              if (currentCell.getCellType() == currentCell.CELL_TYPE_STRING) {
                                   if (cellNum == 6 || cellNum == 7) {
                                        data[cellNum] = Integer.parseInt(currentCell.getStringCellValue());
                                   } else {
                                        data[cellNum] = currentCell.getStringCellValue();
                                   }
                              } else if (currentCell.getCellType() == currentCell.CELL_TYPE_NUMERIC) {
                                   if (cellNum == 2 || cellNum == 4 || cellNum == 5) {
                                        data[cellNum] = Integer.toString((int) currentCell.getNumericCellValue());
                                   } else {
                                        data[cellNum] = (int) currentCell.getNumericCellValue();
                                   }
                              }

                         } else {
                              if (notNullList.contains(cellNum)) {
                                   validate = false;
                                   checkReviewReport = false;
                                   data[17] += "Cột thứ " + c + " bị trống.\n";
                              }
                         }
                    }

                    if (data[4] == null && data[5] == null) {
                         validate = false;
                         checkReviewReport = false;
                         data[17] += "Cần ít nhất một số điện thoại.\n";
                    }
                    if (validate) {
                         data[17] = "OK";
                    }
                    reviewList.add(data);

               }
          } catch (Exception e) {
               e.printStackTrace();
               return null;
          }
          return reviewList;
     }

     private boolean checkReview() {
          if (reviewList.isEmpty()) {
               return false;
          } else {
               return true;
          }
     }

     @CrossOrigin
     @GetMapping(path = "/importBirthday")
     public @ResponseBody
     Map<String, String> importBirthday() throws IOException, JSONException {
          if (checkReview()) {
               import_list_birthday.clear();
               Map<String, String> iResult = new HashMap<>();
               String importTime = Util.getCurrentDateTime("yyyy-MM-dd HH:mm:ss");
               String contact_campaign = fileName + "_" + Util.getCurrentDateTime("ddMMyyyy");
               String log = "Import result\n";
               String errorLog = "No Error";
               Integer numSuccess = 0;
               Integer numFail = 0;
               Integer total = reviewList.size();
               Integer[] notNulls = {1, 2, 3, 6, 7, 12};
               try {
                    for (int i = 0; i < reviewList.size(); i++) {
                         int r = i + 2;
                         Object[] data = reviewList.get(i);
                         boolean validate = true;
                         for (int j = 0; j < notNulls.length; j++) {
                              if (data[notNulls[j]] == null) {
                                   int c = notNulls[j] + 1;
                                   errorLog = errorLog + " - Dòng " + r + ". Cột thứ " + c + " bị trống.";
                                   validate = false;
                              }
                         }

                         if (data[4] == null && data[5] == null) {
                              errorLog = errorLog + " - Dòng " + r + ": Cần ít nhất một số điện thoại.";
                              validate = false;
                         }

                         if (!validate) {
                              numFail++;
                              continue;
                         }
                         int maxChainId = birthdayRepository.getMaxChaniId();
                         long record_id = birthdayRepository.getMaxRecordId() + 1;
                         data[0] = record_id;
                         data[15] = contact_campaign;
                         data[16] = importTime;
                         if (data[8] == null) {
                              data[8] = data[9];
                         }

                         if (data[10] == null) {
                              data[10] = "Banh kem";
                         } else {
                              data[10] = "Hoa";
                         }

                         if (data[4] != null && data[5] != null) {
                              data[13] = maxChainId + 1;
                              data[14] = 0;
                              Birthday s = new Birthday(data);
                              //
                              s = updateDefaultBirthday(s);
                              //
                              birthdayRepository.save(s);
                              import_list_birthday.add(s);
                              data[0] = (Long) data[0] + 1;
                              data[4] = data[5];
                              data[14] = (Integer) data[14] + 1;
                              Birthday s2 = new Birthday(data);
                              //
                              s2 = updateDefaultBirthday(s2);
                              //
                              birthdayRepository.save(s2);
                              import_list_birthday.add(s2);
                         } else {
                              data[13] = maxChainId + 1;
                              data[14] = 0;
                              if (data[4] == null) {
                                   data[4] = data[5];
                              }
                              Birthday s = new Birthday(data);
                              //
                              s = updateDefaultBirthday(s);
                              //
                              birthdayRepository.save(s);
                              import_list_birthday.add(s);
                         }
                         numSuccess++;
                    }
               } catch (Exception e) {
                    e.printStackTrace();
                    StringWriter errors = new StringWriter();
                    e.printStackTrace(new PrintWriter(errors));
                    iResult.put("total", " Report Result" + "\n" +
                            " Error: " + errors.toString() + "\n" +
                            " Success: 0" + "\n" +
                            " Fail: 0" + "\n");
                    return iResult;
               }
               int numPage = Util.getNumPage(import_list_birthday);
               iResult.put("total",
                       " Report Result" + "\n" +
                               " Error: " + errorLog + "\n" +
                               " Success: " + Integer.toString(numSuccess) + "\n" +
                               " Fail: " + Integer.toString(numFail) + "\n" +
                               " Contact_campaign: " + contact_campaign + "\n" +
                               " Date_campaign: " + importTime);
               return iResult;
          }
          return null;
     }


     @CrossOrigin
     @GetMapping(path = "/importSurvey")
     public @ResponseBody
     Map<String, String> importSurvey() {
          if (checkReview()) {
               import_list_survey.clear();
               String importTime = Util.getCurrentDateTime("yyyy-MM-dd HH:mm:ss");
               String contact_campaign = fileName + "_" + Util.getCurrentDateTime("ddMMyyyy");
               Map<String, String> iResult = new HashMap<>();
               String errorLog = "No Error";
               Integer numSuccess = 0;
               Integer numFail = 0;
               Integer[] notNulls = {1, 2, 5, 6};
               try {
                    for (int i = 0; i < reviewList.size(); i++) {
                         int r = i + 2;
                         Object[] data = reviewList.get(i);
                         boolean validate = true;
                         for (int j = 0; j < notNulls.length; j++) {
                              if (data[notNulls[j]] == null) {
                                   int c = notNulls[j] + 1;
                                   errorLog = errorLog + " - Dòng " + r + ". Cột thứ " + c + " bị trống.";
                                   validate = false;
                              }
                         }
                         if (data[3] == null && data[4] == null) {
                              errorLog = errorLog + " - Dòng " + r + ": Cần ít nhất một số điện thoại.";
                              validate = false;
                         }
                         if (!validate) {
                              numFail++;
                              continue;
                         }
                         int maxChainId = surveyRepository.getMaxChaniId();
                         long record_id = surveyRepository.getMaxRecordId() + 1;
                         data[0] = record_id;
                         data[9] = contact_campaign;
                         data[10] = importTime;
                         if (data[3] != null && data[4] != null) {
                              data[7] = maxChainId + 1;
                              data[8] = 0;
                              Survey s = new Survey(data);
                              //
                              s = updateDefaultSurvey(s);
                              //
                              surveyRepository.save(s);
                              import_list_survey.add(s);
                              data[0] = (Long) data[0] + 1;
                              data[3] = data[4];
                              data[8] = (Integer) data[8] + 1;
                              Survey s2 = new Survey(data);
                              //
                              s2 = updateDefaultSurvey(s2);
                              //
                              surveyRepository.save(s2);
                              import_list_survey.add(s2);
                         } else {
                              data[7] = maxChainId + 1;
                              data[8] = 0;
                              if (data[3] == null) {
                                   data[3] = data[4];
                              }
                              Survey s = new Survey(data);
                              //
                              s = updateDefaultSurvey(s);
                              //
                              surveyRepository.save(s);
                              import_list_survey.add(s);
                         }
                         numSuccess++;
                    }
               } catch (Exception e) {
                    e.printStackTrace();
                    StringWriter errors = new StringWriter();
                    e.printStackTrace(new PrintWriter(errors));
                    iResult.put("total", " Report Result" + "\n" +
                            " Error: " + errors.toString() + "\n" +
                            " Success: 0" + "\n" +
                            " Fail: 0" + "\n");
                    return iResult;
               }

               int numPage = Util.getNumPage(import_list_survey);
               iResult.put("total",
                       " Report Result" + "\n" +
                               " Error: " + errorLog + "\n" +
                               " Success: " + Integer.toString(numSuccess) + "\n" +
                               " Fail: " + Integer.toString(numFail) + "\n" +
                               " Contact_campaign: " + contact_campaign + "\n" +
                               " Date_campaign: " + importTime);
               return iResult;
          }
          return null;
     }

     @CrossOrigin
     @GetMapping(path = "/exportSurvey") // Map ONLY GET Requests
     public @ResponseBody
     ModelAndView getResultSurvey(HttpServletRequest request, HttpServletResponse response) {
          Map<Integer, Survey> surveyData = new HashMap<Integer, Survey>();
          Iterable<Survey> surveys = surveyRepository.findAll();
          int stt = 0;
          for (Survey b : surveys) {
               surveyData.put(stt, b);
               stt++;
          }
          response.setContentType("application/ms-excel");
          response.setHeader("Content-disposition", "attachment; filename=SurveyCampaign.xls");
          return new ModelAndView(new SurveyExcelView(), "surveyData", surveyData);
     }

     @CrossOrigin
     @GetMapping(path = "/exportBirthday")
     public @ResponseBody
     ModelAndView getResultBirthday(HttpServletRequest request, HttpServletResponse response) {
          Map<Integer, Birthday> birthdayData = new HashMap<Integer, Birthday>();
          Iterable<Birthday> birthdays = birthdayRepository.findAll();
          int stt = 0;
          for (Birthday b : birthdays) {
               birthdayData.put(stt, b);
               stt++;
          }

          response.setContentType("application/ms-excel");
          response.setHeader("Content-disposition", "attachment; filename=BirthdayCampaign.xls");
          return new ModelAndView(new BirthdayExcelView(), "birthdayData", birthdayData);
     }

     @CrossOrigin
     @GetMapping(path = "/formSurvey") // Map ONLY GET Requests
     public @ResponseBody
     Map<String, String> getDownloadSurvey(HttpServletResponse response) throws IOException {
          String str = "http://" + host +":" + port + "/survey_form.xlsx";
          Map<String, String> mapReturn = new HashMap<>();
          mapReturn.put("url", str);
          return mapReturn;
     }

     @CrossOrigin
     @GetMapping(path = "/formBirthday") // Map ONLY GET Requests
     public @ResponseBody
     Map<String, String> getDownloadBirthday(HttpServletResponse response) throws IOException {
          String str = "http://" + host +":" + port + "/birthday_form.xlsx";
          Map<String, String> mapReturn = new HashMap<>();
          mapReturn.put("url", str);
          return mapReturn;
     }

     @CrossOrigin
     @GetMapping(path = "/getHistory") // Map ONLY GET Requests
     public @ResponseBody
     List<Object> getHistory(@RequestParam Map<String, String> mapData) throws IOException {
          Integer page = Integer.valueOf(mapData.getOrDefault("pages", "1"));
          String strCampaignName = mapData.getOrDefault("table", "");
          if (mapData.get("table") != null) {
               String strTable = mapData.get("table");
               if (strTable.equalsIgnoreCase("birthday")) {
                    //birthday
                    List<Object> lstReturn = birthdayRepository.findImportHistory();
                    totalItem = lstReturn.size();
                    return Util.PaginationList(lstReturn, page);
               } else if (strTable.equalsIgnoreCase("survey")) {
                    //survey
                    List<Object> lstReturn = surveyRepository.findImportHistory();
                    totalItem = lstReturn.size();
                    return Util.PaginationList(lstReturn, page);
               } else {
                    List<Object> lstReturn = cc247otherRepository.findImportHistory(strCampaignName);
                    totalItem = lstReturn.size();
                    return Util.PaginationList(lstReturn, page);
               }

          }
          return null;
     }


     @CrossOrigin
     @GetMapping(path = "/remove")
     @ResponseBody
     public String removeImport(@RequestParam(value = "filename") String filename,
                                @RequestParam(value = "date") String date) {
          List<Long> ids = birthdayRepository.findByHisory(filename, date);
          if (!ids.isEmpty()) {
               birthdayRepository.deleteByIdIn(ids);
               return "Deleted";
          }

          return "Nothing deleted";
     }
}
