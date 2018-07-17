package vn.vnpt.ssdc.utility;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.util.CellRangeAddress;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.springframework.web.servlet.view.document.AbstractExcelView;
import vn.vnpt.ssdc.outbound.entity.CC247other;
import vn.vnpt.ssdc.outbound.entity.CampaignName;
import vn.vnpt.ssdc.outbound.repo.CampaignNameRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class OtherExcelView extends AbstractExcelView {

     public CampaignNameRepository campaignNameRepository;

     @Override
     protected void buildExcelDocument(Map model, HSSFWorkbook workbook,
                                       HttpServletRequest request, HttpServletResponse response)
             throws Exception {

          Map<Integer, CC247other> revenueData = (Map<Integer, CC247other>) model.get("cc247Data");
          //Get CampaignName
          CC247other cc247other = revenueData.get(0);
          HSSFSheet sheet = workbook.createSheet(cc247other.getCampaign_name());
          //
          HSSFRow header = sheet.createRow(0);
          HSSFRow header1 = sheet.createRow(1);
          CellStyle style = workbook.createCellStyle();
          style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
          style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
          style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
          style.setBorderRight(HSSFCellStyle.BORDER_THIN);
          style.setBorderTop(HSSFCellStyle.BORDER_THIN);
          style.setFillBackgroundColor(HSSFColor.BLUE.index);

          CellStyle style_2 = workbook.createCellStyle();
          style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
          style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
          style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
          style.setBorderRight(HSSFCellStyle.BORDER_THIN);
          style.setBorderTop(HSSFCellStyle.BORDER_THIN);

          List<CampaignName> lstCampaignName = campaignNameRepository.findAllByName(cc247other.getCampaign_name().trim());
          if (lstCampaignName.size() > 0) {
               ///Header
               CampaignName campaignName = lstCampaignName.get(0);
               String strHeader = campaignName.getHeader();
               JSONArray jsonArray = new JSONArray(strHeader);
               for (int i = 0; i < jsonArray.length() - 1 ; i++) {
                    Cell cell = header.createCell(i);
                    cell.setCellStyle(style);
                    cell.setCellValue(jsonArray.get(i).toString());
                    sheet.addMergedRegion(new CellRangeAddress(0, 1, i, i));
                    sheet.setColumnWidth(i, 5000);
               }
               ///Data
               String strDataGet = campaignName.getHeaderDb();
               JSONArray jsonHeaderDB = new JSONArray(strDataGet);
               List<Object> lstObjectData = new ArrayList<>();


               int rowNum = 2;
               int stt = 1;

               for (int i = 0; i < revenueData.size(); i++) {
                    CC247other cc247other1 = revenueData.get(i);
                    HSSFRow row = sheet.createRow(rowNum++);

                    for (int a = 0; a < jsonHeaderDB.length() - 1; a++) {
                         String strRow = jsonHeaderDB.get(a).toString();
                         String strPrint = "";
                         try{
                              strPrint = mapColumnWithData(cc247other1, strRow);
                         }catch(Exception ex){
                              //ex.toString();
                              //null exc remove;
                         }


                         Cell c1 = row.createCell(a);
                         c1.setCellStyle(style);
                         c1.setCellValue(strPrint);

                    }

                    Cell c0 = row.createCell(0);
                    c0.setCellStyle(style);
                    c0.setCellValue(stt);

                    stt++;
               }

          }
     }

     private String mapColumnWithData(CC247other cc247other, String strColumn) throws UnsupportedEncodingException, JSONException {
          //
          if (strColumn.equalsIgnoreCase("contact_info")) {
               return cc247other.getContactInfo();
          }
          //
          if (strColumn.equalsIgnoreCase("campaign_date")) {
               return cc247other.getCampaign_date();
          }
          if (strColumn.equalsIgnoreCase("customer_id")) {
               return String.valueOf(cc247other.getCustomer_id());
          }
          if (strColumn.equalsIgnoreCase("customer_name")) {
               return Util.convertASCI_UTF8(cc247other.getCustomer_name());
          }
          if (strColumn.equalsIgnoreCase("gender")) {
               return Util.convertASCI_UTF8(cc247other.getGender()) ;
          }
          if (strColumn.equalsIgnoreCase("tax_id")) {
               return cc247other.getTax_id();
          }
          if (strColumn.equalsIgnoreCase("brithday")) {
               return cc247other.getBrithday();
          }
          if (strColumn.equalsIgnoreCase("title")) {
               return Util.convertASCI_UTF8(cc247other.getTitle());
          }
          if (strColumn.equalsIgnoreCase("email")) {
               return cc247other.getEmail();
          }
          if (strColumn.equalsIgnoreCase("address")) {
               return Util.convertASCI_UTF8(cc247other.getAddress());
          }
          if (strColumn.equalsIgnoreCase("account_number")) {
               return cc247other.getAccount_number();
          }
          if (strColumn.equalsIgnoreCase("card_number")) {
               return cc247other.getCard_number();
          }
          if (strColumn.equalsIgnoreCase("note")) {
               return Util.convertASCI_UTF8(cc247other.getNote());
          }
          if (strColumn.equalsIgnoreCase("field_1")) {
               return Util.convertASCI_UTF8(cc247other.getField_1());
          }
          if (strColumn.equalsIgnoreCase("field_2")) {
               return Util.convertASCI_UTF8(cc247other.getField_2());
          }
          if (strColumn.equalsIgnoreCase("field_3")) {
               return Util.convertASCI_UTF8(cc247other.getField_3());
          }
          if (strColumn.equalsIgnoreCase("field_4")) {
               return Util.convertASCI_UTF8(cc247other.getField_4());
          }
          if (strColumn.equalsIgnoreCase("field_5")) {
               return Util.convertASCI_UTF8(cc247other.getField_5());
          }
          if (strColumn.equalsIgnoreCase("field_6")) {
               return Util.convertASCI_UTF8(cc247other.getField_6());
          }
          if (strColumn.equalsIgnoreCase("field_7")) {
               return Util.convertASCI_UTF8(cc247other.getField_7());
          }
          if (strColumn.equalsIgnoreCase("field_8")) {
               return Util.convertASCI_UTF8(cc247other.getField_8());
          }
          if (strColumn.equalsIgnoreCase("field_9")) {
               return Util.convertASCI_UTF8(cc247other.getField_9());
          }
          if (strColumn.equalsIgnoreCase("field_10")) {
               return Util.convertASCI_UTF8(cc247other.getField_10());
          }
          if (strColumn.equalsIgnoreCase("field_11")) {
               return String.valueOf(cc247other.getField_11());
          }
          if (strColumn.equalsIgnoreCase("field_12")) {
               return String.valueOf(cc247other.getField_12());
          }
          if (strColumn.equalsIgnoreCase("field_13")) {
               return String.valueOf(cc247other.getField_13());
          }
          if (strColumn.equalsIgnoreCase("field_14")) {
               return String.valueOf(cc247other.getField_14());
          }
          if (strColumn.equalsIgnoreCase("field_15")) {
               return String.valueOf(cc247other.getField_15());
          }
          if (strColumn.equalsIgnoreCase("field_16")) {
               return String.valueOf(cc247other.getField_16());
          }
          if (strColumn.equalsIgnoreCase("field_17")) {
               return cc247other.getField_17();
          }
          if (strColumn.equalsIgnoreCase("field_18")) {
               return cc247other.getField_18();
          }
          if (strColumn.equalsIgnoreCase("field_19")) {
               return cc247other.getField_19();
          }
          if (strColumn.equalsIgnoreCase("field_20")) {
               return cc247other.getField_20();
          }
          if (strColumn.equalsIgnoreCase("field_21")) {
               return cc247other.getField_21();
          }
          if (strColumn.equalsIgnoreCase("field_22")) {
               return cc247other.getField_22();
          }
          if (strColumn.equalsIgnoreCase("field_23")) {
               return cc247other.getField_23();
          }
          if (strColumn.equalsIgnoreCase("field_24")) {
               return cc247other.getField_24();
          }
          if (strColumn.equalsIgnoreCase("field_25")) {
               return cc247other.getField_25();
          }
          if (strColumn.equalsIgnoreCase("field_26")) {
               return cc247other.getField_26();
          }
          if (strColumn.equalsIgnoreCase("field_27")) {
               return cc247other.getField_27();
          }
          if (strColumn.equalsIgnoreCase("field_28")) {
               return cc247other.getField_28();
          }
          if (strColumn.equalsIgnoreCase("field_29")) {
               return cc247other.getField_29();
          }
          ///
          return "";
     }
}
