package vn.vnpt.ssdc.utility;


import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.util.CellRangeAddress;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.view.document.AbstractExcelView;
import vn.vnpt.ssdc.voiceMail.entity.CdrCall;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class CdrCallExcelView extends AbstractExcelView{
    private static final Logger logger = LoggerFactory.getLogger(CdrCallExcelView.class);
    @Override
    protected void buildExcelDocument(Map model, HSSFWorkbook workbook,
                                      HttpServletRequest request, HttpServletResponse response)
        throws Exception {

        Map<Integer,CdrCall> revenueData = (Map<Integer,CdrCall>) model.get("cdrData");
        HSSFSheet sheet = workbook.createSheet("Cdr Call");

        HSSFRow header = sheet.createRow(0);
//        HSSFRow header1 = sheet.createRow(1);
        CellStyle style = workbook.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
        style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
        style.setBorderRight(HSSFCellStyle.BORDER_THIN);
        style.setBorderTop(HSSFCellStyle.BORDER_THIN);


        Cell cell0 = header.createCell(0);
        cell0.setCellStyle(style);
        cell0.setCellValue("Stt");
        sheet.addMergedRegion(new CellRangeAddress(0,1,0,0));
        sheet.setColumnWidth(0, 2000);

        Cell cell1 = header.createCell(1);
        cell1.setCellStyle(style);
        cell1.setCellValue("Số chủ gọi");
        sheet.addMergedRegion(new CellRangeAddress(0,1,1,1));
        sheet.setColumnWidth(1, 4000);

        Cell cell2 = header.createCell(2);
        cell2.setCellStyle(style);
        cell2.setCellValue("Số bị gọi");
        sheet.addMergedRegion(new CellRangeAddress(0,1,2,2));
        sheet.setColumnWidth(2, 4000);

        Cell cell3 = header.createCell(3);
        cell3.setCellStyle(style);
        cell3.setCellValue("Thời điểm khởi tạo");
        sheet.addMergedRegion(new CellRangeAddress(0,1,3,3));
        sheet.setColumnWidth(3, 5000);

        Cell cell4 = header.createCell(4);
        cell4.setCellStyle(style);
        cell4.setCellValue("Thời điểm bắt đầu");
        sheet.addMergedRegion(new CellRangeAddress(0,1,4,4));
        sheet.setColumnWidth(4, 5000);

        Cell cell5 = header.createCell(5);
        cell5.setCellStyle(style);
        cell5.setCellValue("Thời điểm kết thúc");
        sheet.addMergedRegion(new CellRangeAddress(0,1,5,5));
        sheet.setColumnWidth(5, 5000);

        Cell cell6 = header.createCell(6);
        cell6.setCellStyle(style);
        cell6.setCellValue("Thời lượng cuộc gọi (s)");
        sheet.addMergedRegion(new CellRangeAddress(0,1,6,6));
        sheet.setColumnWidth(6, 6000);

        Cell cell7 = header.createCell(7);
        cell7.setCellStyle(style);
        cell7.setCellValue("Trạng thái cuộc gọi");
        sheet.addMergedRegion(new CellRangeAddress(0,1,7,7));
        sheet.setColumnWidth(7, 5000);

        Cell cell8 = header.createCell(8);
        cell8.setCellStyle(style);
        cell8.setCellValue("Tổng cuộc gọi");
        sheet.addMergedRegion(new CellRangeAddress(0,1,8,8));
        sheet.setColumnWidth(8, 4000);

        Cell cell9 = header.createCell(9);
        cell9.setCellStyle(style);
        cell9.setCellValue("Tổng thành công");
        sheet.addMergedRegion(new CellRangeAddress(0,1,9,9));
        sheet.setColumnWidth(9, 4000);

        Cell cel20 = header.createCell(10);
        cel20.setCellStyle(style);
        cel20.setCellValue("Tổng thất bại");
        sheet.addMergedRegion(new CellRangeAddress(0,1,10,10));
        sheet.setColumnWidth(10, 4000);

        int rowNum = 2;
        int stt = 1;
        logger.info("revenueData --> " + revenueData.size());
        for (int i=0; i< revenueData.size(); i++){
            HSSFRow row = sheet.createRow(rowNum++);
            CdrCall cdrCall = revenueData.get(i);

            Cell c0 = row.createCell(0);
            c0.setCellStyle(style);
            c0.setCellValue(stt);

            Cell c1 = row.createCell(1);
            c1.setCellStyle(style);
            c1.setCellValue(cdrCall.getSrcPhoneNum());

            Cell c2 = row.createCell(2);
            c2.setCellStyle(style);
            c2.setCellValue(cdrCall.getDstPhoneNum());

            Cell c3 = row.createCell(3);
            c3.setCellStyle(style);
            c3.setCellValue(cdrCall.getSetupTime());

            Cell c5 = row.createCell(4);
            c5.setCellStyle(style);
            c5.setCellValue(cdrCall.getConnectTime());

            Cell c6 = row.createCell(5);
            c6.setCellStyle(style);
            c6.setCellValue(cdrCall.getReleaseTime());

            Cell c7 = row.createCell(6);
            c7.setCellStyle(style);
            c7.setCellValue(cdrCall.getDuration());

            Cell c8 = row.createCell(7);
            c8.setCellStyle(style);
            c8.setCellValue(cdrCall.getStatus());

            if(i == 0) {
                Cell c9 = row.createCell(8);
                c9.setCellStyle(style);
                c9.setCellValue(revenueData.size());

                int suscess = 0;
                for (int j = 0; j < revenueData.size(); j ++) {
                    if(revenueData.get(j).getStatus() == 1) {
                        suscess = suscess + 1;
                    }
                }

                Cell c10 = row.createCell(9);
                c10.setCellStyle(style);
                c10.setCellValue(suscess);

                Cell c11 = row.createCell(10);
                c11.setCellStyle(style);
                c11.setCellValue(revenueData.size() - suscess);
            }

            stt++;
        }

    }
}
