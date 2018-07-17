package vn.vnpt.ssdc.parser;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import vn.vnpt.ssdc.voiceMail.entity.CdrCall;
import vn.vnpt.ssdc.voiceMail.entity.JoinEvent;

import java.io.InputStream;
import java.util.*;

@Component
public class XlsxParser implements Parser{

    private static final Logger logger = LoggerFactory.getLogger(XlsxParser.class);
    private static final Character DELIMITER = ',';

    @Override
    public String fileExtension() {
        return ".xlsx";
    }

    @Override
    public List<CdrCall> parse(InputStream excelFile) {
        return  new LinkedList<CdrCall>();
    }

    @Override
    public List<JoinEvent> parseJoinEvent(InputStream inputStream) {

        List<JoinEvent> list = new ArrayList<>();
        try {
            Workbook workbook = new XSSFWorkbook(inputStream);
            Sheet datatypeSheet = workbook.getSheetAt(0);
            Iterator<Row> iterator = datatypeSheet.iterator();

            iterator.next();//bỏ qua dòng tiêu đề
            while (iterator.hasNext()) {
                Row currentRow = iterator.next();
                Iterator<Cell> cellIterator = currentRow.iterator();
                Map<String, String> tmp = new HashMap<>();
                //bỏ qua ô stt
                cellIterator.next();
                JoinEvent joinEvent = new JoinEvent();
                joinEvent.setLocation(cellIterator.next().getStringCellValue());
                joinEvent.setStaffName(cellIterator.next().getStringCellValue());
                joinEvent.setAgencyName(cellIterator.next().getStringCellValue());
                joinEvent.setCustomerName(cellIterator.next().getStringCellValue());
                //read Phone Number
                Cell cellPhoneNumber = cellIterator.next();
                try{
                    joinEvent.setCustomerPhone(cellPhoneNumber.getStringCellValue());
                }catch (IllegalStateException ex){

                    joinEvent.setCustomerPhone(String.valueOf((int)cellPhoneNumber.getNumericCellValue()));
                }
                list.add(joinEvent);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
