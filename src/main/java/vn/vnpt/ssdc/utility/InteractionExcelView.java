package vn.vnpt.ssdc.utility;


import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.view.document.AbstractExcelView;
import org.springframework.web.servlet.view.document.AbstractXlsxView;
import vn.vnpt.ssdc.ucs.entity.Interaction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class InteractionExcelView extends AbstractXlsxView{
    private static final Logger logger = LoggerFactory.getLogger(InteractionExcelView.class);

    @Override
    protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        Map<Integer,Interaction> revenueData = (Map<Integer,Interaction>) model.get("interactionExcels");
        Sheet sheet = workbook.createSheet("Interaction");

        Row header = sheet.createRow(0);

        CellStyle style = workbook.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
        style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
        style.setBorderRight(HSSFCellStyle.BORDER_THIN);
        style.setBorderTop(HSSFCellStyle.BORDER_THIN);
        style.setWrapText(true);


        Cell cell0 = header.createCell(0);
        cell0.setCellStyle(style);
        cell0.setCellValue("Stt");
        sheet.addMergedRegion(new CellRangeAddress(0,1,0,0));
        sheet.setColumnWidth(0, 2000);

        Cell cell = header.createCell(1);
        cell.setCellStyle(style);
        cell.setCellValue("Interaction ID");
        sheet.addMergedRegion(new CellRangeAddress(0,1,1,1));
        sheet.setColumnWidth(1, 6000);


        Cell cell2 = header.createCell(2);
        cell2.setCellStyle(style);
        cell2.setCellValue("Agent");
        sheet.addMergedRegion(new CellRangeAddress(0,1,2,2));
        sheet.setColumnWidth(2, 6000);

        Cell cell3 = header.createCell(3);
        cell3.setCellStyle(style);
        cell3.setCellValue("Thời gian bắt đầu");
        sheet.addMergedRegion(new CellRangeAddress(0,1,3,3));
        sheet.setColumnWidth(3, 6000);

        Cell cell4 = header.createCell(4);
        cell4.setCellStyle(style);
        cell4.setCellValue("Thời điểm kết thúc");
        sheet.addMergedRegion(new CellRangeAddress(0,1,4,4));
        sheet.setColumnWidth(4, 6000);

        Cell cell5 = header.createCell(5);
        cell5.setCellStyle(style);
        cell5.setCellValue("Loại Interaction");
        sheet.addMergedRegion(new CellRangeAddress(0,1,5,5));
        sheet.setColumnWidth(5, 4000);

        Cell cell6 = header.createCell(6);
        cell6.setCellStyle(style);
        cell6.setCellValue("Subject");
        sheet.addMergedRegion(new CellRangeAddress(0,1,6,6));
        sheet.setColumnWidth(6, 10000);

        Cell cell7 = header.createCell(7);
        cell7.setCellStyle(style);
        cell7.setCellValue("Tên khách hàng");
        sheet.addMergedRegion(new CellRangeAddress(0,1,7,7));
        sheet.setColumnWidth(7, 4000);

        Cell cell8 = header.createCell(8);
        cell8.setCellStyle(style);
        cell8.setCellValue("Số điện thoại");
        sheet.addMergedRegion(new CellRangeAddress(0,1,8,8));
        sheet.setColumnWidth(8, 4000);

        Cell cell9 = header.createCell(9);
        cell9.setCellStyle(style);
        cell9.setCellValue("Email");
        sheet.addMergedRegion(new CellRangeAddress(0,1,9,9));
        sheet.setColumnWidth(9, 6000);

        Cell cell10 = header.createCell(10);
        cell10.setCellStyle(style);
        cell10.setCellValue("Disposition code");
        sheet.addMergedRegion(new CellRangeAddress(0,1,10,10));
        sheet.setColumnWidth(10, 4000);

        Cell cell11 = header.createCell(11);
        cell11.setCellStyle(style);
        cell11.setCellValue("Note");
        sheet.addMergedRegion(new CellRangeAddress(0,1,11,11));
        sheet.setColumnWidth(11, 10000);

        Cell cell12 = header.createCell(12);
        cell12.setCellStyle(style);
        cell12.setCellValue("Nội dung mail");
        sheet.addMergedRegion(new CellRangeAddress(0,1,12,12));
        sheet.setColumnWidth(12, 15000);

        int rowNum = 2;
        int stt = 1;
        logger.info("revenueData --> " + revenueData.size());

        int total = 0;
        if(revenueData.size() > 65536) {
            total = 65500;
        } else total = revenueData.size();

        for (int i=0; i< total; i++){
            Row row = sheet.createRow(rowNum++);
            Interaction interaction = revenueData.get(i);

            Cell c0 = row.createCell(0);
            c0.setCellStyle(style);
            c0.setCellValue("zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz");

            Cell c1 = row.createCell(1);
            c1.setCellStyle(style);
            c1.setCellValue(interaction.getId());

            Cell c2 = row.createCell(2);
            c2.setCellStyle(style);
            c2.setCellValue(interaction.getAgentName());

            Cell c3 = row.createCell(3);
            c3.setCellStyle(style);
            c3.setCellValue(interaction.getStartDate());

            Cell c4 = row.createCell(4);
            c4.setCellStyle(style);
            c4.setCellValue(interaction.getEndDate());

            Cell c5 = row.createCell(5);
            c5.setCellStyle(style);
            c5.setCellValue(interaction.getMediaTypeId());

            Cell c6 = row.createCell(6);
            c6.setCellStyle(style);
            c6.setCellValue(interaction.getSubject());

            Cell c7 = row.createCell(7);
            c7.setCellStyle(style);
            c7.setCellValue(interaction.getCustomerName());

            Cell c8 = row.createCell(8);
            c8.setCellStyle(style);
            c8.setCellValue(interaction.getPhone());

            Cell c9 = row.createCell(9);
            c9.setCellStyle(style);
            c9.setCellValue(interaction.getEmail());

            Cell c10 = row.createCell(10);
            c10.setCellStyle(style);
            c10.setCellValue(interaction.getDisposition());

            Cell c11 = row.createCell(11);
            c11.setCellStyle(style);
            c11.setCellValue(interaction.getTheComment());

            Cell c12 = row.createCell(12);
            c12.setCellStyle(style);
            try {
                if(interaction.getMediaTypeId().equals("email")) {
                    Document doc = Jsoup.parse(interaction.getStructuredText());
                    c12.setCellValue(doc.select("P").first().text());
                }
            } catch (Exception ex) {
                c12.setCellValue("");
            }
            stt++;
        }

    }
}
