package vn.vnpt.ssdc.utility;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.springframework.web.servlet.view.document.AbstractExcelView;
import vn.vnpt.ssdc.voiceMail.entity.VoiceMailReport;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class VoiceMailReportView extends AbstractExcelView {

    @Override
    protected void buildExcelDocument(Map map, HSSFWorkbook workbook,
                                      HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Map<Integer, VoiceMailReport> revenueData = (Map<Integer, VoiceMailReport>) map.get("voiceMailData");

        HSSFSheet sheet = workbook.createSheet("Voice Mail Report");

        CellStyle style = workbook.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
        style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
        style.setBorderRight(HSSFCellStyle.BORDER_THIN);
        style.setBorderTop(HSSFCellStyle.BORDER_THIN);

        HSSFRow header = sheet.createRow(0);
        Cell cell0 = header.createCell(0);
        cell0.setCellStyle(style);
        cell0.setCellValue("STT");
        sheet.setColumnWidth(0, 2000);

        Cell cell1 = header.createCell(1);
        cell1.setCellStyle(style);
        cell1.setCellValue("Agent Email");
        sheet.setColumnWidth(1, 7000);

        Cell cell2 = header.createCell(2);
        cell2.setCellStyle(style);
        cell2.setCellValue("Done");
        sheet.setColumnWidth(2, 7000);

        Cell cell3 = header.createCell(3);
        cell3.setCellStyle(style);
        cell3.setCellValue("In-Process");
        sheet.setColumnWidth(3, 7000);

        int rowNum = 1;
        int agentCountSeen = 0;
        int agentCountInprocess = 0;

        for (int i = 0; i < revenueData.size(); i++) {
            VoiceMailReport voiceMailReport = revenueData.get(i);
            HSSFRow row = sheet.createRow(rowNum++);
            Cell c0 = row.createCell(0);
            c0.setCellStyle(style);
            c0.setCellValue(i + 1);

            Cell c1 = row.createCell(1);
            c1.setCellStyle(style);
            if (voiceMailReport.getAgentEmail() != null && !voiceMailReport.getAgentEmail().isEmpty()) {
                c1.setCellValue(voiceMailReport.getAgentEmail());
            }

            Cell c2 = row.createCell(2);
            c2.setCellStyle(style);
            if (voiceMailReport.getCountSeen() != null && !voiceMailReport.getCountSeen().isEmpty()) {
                c2.setCellValue(voiceMailReport.getCountSeen());
                agentCountSeen += Integer.parseInt(voiceMailReport.getCountSeen());
            }

            Cell c3 = row.createCell(3);
            c3.setCellStyle(style);
            if (voiceMailReport.getCountInprocess() != null && !voiceMailReport.getCountInprocess().isEmpty()) {
                c3.setCellValue(voiceMailReport.getCountInprocess());
                agentCountInprocess += Integer.parseInt(voiceMailReport.getCountInprocess());
            }
        }

        HSSFRow row = sheet.createRow(revenueData.size() + 2);
        Cell cellb = row.createCell(1);
        cellb.setCellStyle(style);
        cellb.setCellValue("TOTAL : ");
        sheet.setColumnWidth(1, 7000);

        Cell cell = row.createCell(2);
        cell.setCellStyle(style);
        cell.setCellValue(agentCountSeen);
        sheet.setColumnWidth(2, 7000);

        Cell cella = row.createCell(3);
        cella.setCellStyle(style);
        cella.setCellValue(agentCountInprocess);
        sheet.setColumnWidth(3, 7000);
    }
}
