package vn.vnpt.ssdc.utility;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Map;

public class SsgCall {

    public static HttpURLConnection connection;

    public static String buildRequest(String iVRProfileName, String telNum, Map<String, String> data){
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<SSGRequest xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:noNamespaceSchemaLocation=\"schema/SSGRequestSchema.xsd\">");

        String optionRequest = "<CreateRequest Token=\"T7034\" MaxAttempts=\"1\" TimeToLive=\"180s\" IVRProfileName=\"{0}\" Telnum=\"{1}\" NotificationURL=\"http://8.8.8.8\">";
        stringBuilder.append(MessageFormat.format(optionRequest, iVRProfileName, telNum));

        String customData = "<KeyValue Key=\"{0}\" Value=\"{1}\"/>";
        if(data != null && data.size() > 0){
            stringBuilder.append("<CustomData>");
            for(String key : data.keySet()){
                stringBuilder.append(MessageFormat.format(customData, key, data.get(key)));
            }
            stringBuilder.append("</CustomData>");
        }

        stringBuilder.append("</CreateRequest>");
        stringBuilder.append("</SSGRequest>");

        return  stringBuilder.toString();
    }

    public static boolean request(String ssgUrl, String cmd){
        StringBuilder result = new StringBuilder();
        try{
            URL url = new URL(ssgUrl);
            connection = (HttpURLConnection) url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestProperty("Content-Type", "application/xml");
            connection.setRequestMethod("POST");
            OutputStream os = connection.getOutputStream();
            os.write(cmd.getBytes());
            os.flush();
            if (connection.getResponseCode() != HttpURLConnection.HTTP_OK) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + connection.getResponseCode());
            }
            BufferedReader br = new BufferedReader(new InputStreamReader(
                    (connection.getInputStream())));

            String output;
            //System.out.println("Output from Server .... \n");
            while ((output = br.readLine()) != null) {
                //System.out.println(output);
                result.append(output);
            }
            connection.disconnect();
        }catch (Exception e){
            e.printStackTrace();
        }

        return result.toString().contains("ResponseType=\"SUCCESS\"");
    }

    /*public static void main(String[] args) {
        Map<String, String> data = new HashMap<>();
        data.put("Id", "3");

        String url = "http://172.16.1.17:9800/SSG?TenantName=Environment";
        String cmd = SsgCall.buildRequest("IVR_Outbound", "6001", data);
        System.out.println(cmd);
        System.out.println(SsgCall.request(url, cmd));
    }*/
}
