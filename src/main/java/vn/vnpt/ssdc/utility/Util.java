package vn.vnpt.ssdc.utility;

import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.codehaus.jettison.json.JSONException;
import org.json.JSONObject;
import springfox.documentation.spring.web.json.Json;

public class Util {

     public static String getCurrentDateTime(String pattern) {
          DateFormat dateFormat = new SimpleDateFormat(pattern);
          dateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Saigon"));
          Date date = new Date();
          return dateFormat.format(date);
     }

     public static Sheet readExcel() {
          String FILE_NAME = "survey.xlsx";
          try {
               FileInputStream excelFile = new FileInputStream(new File(FILE_NAME));
               Workbook workbook = new XSSFWorkbook(excelFile);
               Sheet datatypeSheet = workbook.getSheetAt(0);
//                Iterator<Row> iterator = datatypeSheet.iterator();

//                while (iterator.hasNext()) {
//
//                    Row currentRow = iterator.next();
//                    Iterator<Cell> cellIterator = currentRow.iterator();
//
//                    while (cellIterator.hasNext()) {
//
//                        Cell currentCell = cellIterator.next();
//                        if (currentCell.getCellTypeEnum() == CellType.STRING) {
//                            System.out.print(currentCell.getStringCellValue() + "--");
//                        } else if (currentCell.getCellTypeEnum() == CellType.NUMERIC) {
//                            System.out.print(currentCell.getNumericCellValue() + "--");
//                        }
//
//                    }
//                    System.out.println();
//
//                }
               return datatypeSheet;
          } catch (FileNotFoundException e) {
               e.printStackTrace();
          } catch (IOException e) {
               e.printStackTrace();
          }
          return null;
     }

     public static <T> List<T> PaginationList(List<T> list, int page) {
          List<T> p;
          int size = 10;
          int numPage = getNumPage(list);
          if (page < 0 || page > numPage) {
               return null;
          }

          if (list.size() > size) {
               if (page == 1) {
                    p = list.subList(0, size);
                    return p;
               } else if (page < numPage) {
                    p = list.subList(page * size - size, page * size);
                    return p;
               } else if (page == numPage) {
                    p = list.subList(page * size - size, list.size());
                    return p;
               }
          } else {
               return list;
          }
          return list;
     }

     public static <T> int getNumPage(List<T> list) {
          int size = 10;
          int numPage = 0;
          if (list.size() % size > 0) {
               numPage = list.size() / size + 1;
          } else {
               numPage = list.size() / size;
          }
          return numPage;
     }

     public static String convertUTF8_ASCI(String strString) throws UnsupportedEncodingException {

//          strString = new String(bytes, "ISO-8859-1");
//          System.out.println(strString + "  | ISO-8859-1");
//          strString = new String(bytes, "ISO-8859-2");
//          System.out.println(strString + "  | ISO-8859-2");
//          strString = new String(bytes, "ISO-8859-3");
//          System.out.println(strString + "  | ISO-8859-3");
//          strString = new String(bytes, "ISO-8859-4");
//          System.out.println(strString + "  | ISO-8859-4");
//          strString = new String(bytes, "ISO-8859-5");
//          System.out.println(strString + "  | ISO-8859-5");
//          strString = new String(bytes, "ISO-8859-6");
//          System.out.println(strString + "  | ISO-8859-6");
//          strString = new String(bytes, "ISO-8859-7");
//          System.out.println(strString + "  | ISO-8859-7");
//          strString = new String(bytes, "ISO-8859-8");
//          System.out.println(strString + "  | ISO-8859-8");
//          strString = new String(bytes, "ISO-8859-9");
//          System.out.println(strString + "  | ISO-8859-9");
//          strString = new String(bytes, "ISO-8859-11");
//          System.out.println(strString + "  | ISO-8859-11");
//          strString = new String(bytes, "ISO-8859-13");
//          System.out.println(strString + "  | ISO-8859-13");
//          strString = new String(bytes, "ISO-8859-15");
//          System.out.println(strString + "  | ISO-8859-15");
//          strString = new String(bytes, "windows-1250");
//          System.out.println(strString + "  | windows-1250");
//          strString = new String(bytes, "windows-1251");
//          System.out.println(strString + "  | windows-1251");
//          strString = new String(bytes, "windows-1252");
//          System.out.println(strString + "  | windows-1252");
//          strString = new String(bytes, "windows-1253");
//          System.out.println(strString + "  | windows-1253");
//          strString = new String(bytes, "windows-1254");
//          System.out.println(strString + "  | windows-1254");
//          strString = new String(bytes, "windows-1255");
//          System.out.println(strString + "  | windows-1255");
//          strString = new String(bytes, "windows-1256");
//          System.out.println(strString + "  | windows-1256");
//          strString = new String(bytes, "windows-1257");
//          System.out.println(strString + "  | windows-1257");
//          strString = new String(bytes, "windows-1258");
//          System.out.println(strString + "  | windows-1258");

//          String strDefault = strString;
//          byte[] bytes = strString.getBytes();
//          strString = new String(bytes, "ISO-8859-1");
//          System.out.println(strString + "  | ISO-8859-1 : " + strDefault);
//          strString = new String(bytes, "windows-1252");
//          System.out.println(strString + "  | windows-1252 : " + strDefault);
//          System.out.println("-----------------------------------------------------------");
//          return "";

          String[] arrString = strString.split(" ");
          String strReturn = "";

          for (String strElement : arrString) {
               byte[] bytes = strElement.getBytes("UTF8");
               if (strElement.contains("ề") ||
                       strElement.contains("ẩ") ||
                       strElement.contains("ỏ")) {
                    strReturn += " " + new String(bytes, "ISO-8859-1");
               } else {
                    strReturn += " " + new String(bytes, "windows-1252");
               }

          }
          return strReturn;
     }

     public static String convertASCI_UTF8(String strStringData) throws UnsupportedEncodingException, JSONException {
          if (strStringData != null || !strStringData.equals("")) {
               String[] arrString = strStringData.split(" ");
               String strReturn = "";
               for (String strString : arrString) {
                    System.out.println(strString);
                    byte[] bytes = strString.getBytes("windows-1252");
                    String strTemp = new String(bytes, "UTF-8");
                    System.out.println(strTemp);
                    System.out.println(bytes.toString());
                    System.out.println("-----------------------------------------");

                    if (strReturn.contains("�?")
                            || strString.contains("á»\u008F")
                            || strString.contains("á»\u0081")
                            || strString.contains("á»�")
                            ) {
                         bytes = strString.getBytes("ISO-8859-1");
                         strTemp = new String(bytes, "UTF-8");
                    }
                    ////
                    String strFileName = "exceptionCharacter.txt";
                    BufferedReader br = null;
                    FileReader fr = null;
                    try {
                         //br = new BufferedReader(new FileReader(FILENAME));
                         fr = new FileReader(strFileName);
                         br = new BufferedReader(fr);
                         String sCurrentLine;
                         while ((sCurrentLine = br.readLine()) != null) {
                              JSONObject jsonObj = new JSONObject(sCurrentLine);

                              Iterator<String> iter = jsonObj.keys();
                              while (iter.hasNext()) {
                                   String key = iter.next();
                                   String value = jsonObj.getString(key);

                                   if (strString.equals(key)) {
                                        strTemp = value;
                                   }
                              }
                         }
                    } catch (IOException e) {
                         e.printStackTrace();
                    } catch (org.json.JSONException e) {
                         e.printStackTrace();
                    } finally {
                         try {
                              if (br != null)
                                   br.close();
                              if (fr != null)
                                   fr.close();
                         } catch (IOException ex) {
                              ex.printStackTrace();
                         }
                    }
                    ////
//               if(strString.equals("Nhá»�")){
//                    strTemp = "Nhỏ";
//               }
//               else if(strString.equals("nhá»�")){
//                    strTemp = "nhỏ";
//               }

                    strReturn += " " + strTemp;
               }
               return strReturn;
          }else{
               return "";
          }
     }
}
