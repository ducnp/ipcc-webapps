package vn.vnpt.ssdc.utility;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.web.servlet.view.document.AbstractXlsxView;
import vn.vnpt.ssdc.voiceMail.entity.JoinEvent;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class JoinEventExcelView extends AbstractXlsxView {
    @Override
    protected void buildExcelDocument(Map<String, Object> map, Workbook workbook, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        Map<Integer, JoinEvent> data = (Map<Integer, JoinEvent>) map.get("joinEventData");

        XSSFSheet sheet = (XSSFSheet) workbook.createSheet("Report Join Event");
        CellStyle style = workbook.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
        style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
        style.setBorderRight(HSSFCellStyle.BORDER_THIN);
        style.setBorderTop(HSSFCellStyle.BORDER_THIN);

        XSSFRow header = sheet.createRow(0);
        Cell cell0 = header.createCell(0);
        cell0.setCellStyle(style);
        cell0.setCellValue("STT");
        sheet.setColumnWidth(0, 2000);

        Cell cell1 = header.createCell(1);
        cell1.setCellStyle(style);
        cell1.setCellValue("Khu vực");
        sheet.setColumnWidth(1, 7000);

        Cell cell2 = header.createCell(2);
        cell2.setCellStyle(style);
        cell2.setCellValue("Nhân viên Quản lý");
        sheet.setColumnWidth(2, 7000);

        Cell cell3 = header.createCell(3);
        cell3.setCellStyle(style);
        cell3.setCellValue("KPP");
        sheet.setColumnWidth(3, 5000);

        Cell cell4 = header.createCell(4);
        cell4.setCellStyle(style);
        cell4.setCellValue("Họ tên Khách hàng");
        sheet.setColumnWidth(4, 5000);

        Cell cell5 = header.createCell(5);
        cell5.setCellStyle(style);
        cell5.setCellValue("Số điện thoại");
        sheet.setColumnWidth(5, 5000);

        Cell cell6 = header.createCell(6);
        cell6.setCellStyle(style);
        cell6.setCellValue("Thời gian gọi");
        sheet.setColumnWidth(6, 7000);

        Cell cell7 = header.createCell(7);
        cell7.setCellStyle(style);
        cell7.setCellValue("Kết quả cuộc gọi");
        sheet.setColumnWidth(7, 7000);

        Cell cell8 = header.createCell(8);
        cell8.setCellStyle(style);
        cell8.setCellValue("Kết quả xác nhận");
        sheet.setColumnWidth(8, 7000);

        int rowNum = 1;
        for (int i = 0; i < data.size(); i++) {
            JoinEvent joinEvent = data.get(i + 1);
            XSSFRow row = sheet.createRow(rowNum++);

            Cell c0 = row.createCell(0);
            c0.setCellStyle(style);
            c0.setCellValue(i + 1);

            Cell c1 = row.createCell(1);
            c1.setCellStyle(style);
            c1.setCellValue(joinEvent.getLocation() == null ? "" : joinEvent.getLocation());

            Cell c2 = row.createCell(2);
            c2.setCellStyle(style);
            c2.setCellValue(joinEvent.getStaffName() == null ? "" : joinEvent.getStaffName());

            Cell c3 = row.createCell(3);
            c3.setCellStyle(style);
            c3.setCellValue(joinEvent.getAgencyName() == null ? "" : joinEvent.getAgencyName());

            Cell c4 = row.createCell(4);
            c4.setCellStyle(style);
            c4.setCellValue(joinEvent.getCustomerName() == null ? "" : joinEvent.getCustomerName());

            Cell c5 = row.createCell(5);
            c5.setCellStyle(style);
            c5.setCellValue(joinEvent.getCustomerPhone() == null ? "" : joinEvent.getCustomerPhone());

            Cell c6 = row.createCell(6);
            c6.setCellStyle(style);
            c6.setCellValue(joinEvent.getCallTime() == null ? "" : joinEvent.getCallTime());

            Cell c7 = row.createCell(7);
            c7.setCellStyle(style);
            String callStatus = "";
            if(joinEvent.getCallStatus() ==-1) callStatus = "Chưa gọi";
            if(joinEvent.getCallStatus() == 0) callStatus = "Chờ gọi";
            if(joinEvent.getCallStatus() == 1) callStatus = "Thành công";
            if(joinEvent.getCallStatus() == 2) callStatus = "Thất bại";
            c7.setCellValue(callStatus);

            Cell c8 = row.createCell(8);
            c8.setCellStyle(style);
            String callResult = "";
            if(joinEvent.getCallResult() == 0) callResult = "Không nghe máy";
            if(joinEvent.getCallResult() == 1) callResult = "Tham gia";
            if(joinEvent.getCallResult() == 2) callResult = "Từ chối";
            if(joinEvent.getCallResult() == 2) callResult = "Để lại lời nhắn";
            c8.setCellValue(callResult);
        }
    }

}