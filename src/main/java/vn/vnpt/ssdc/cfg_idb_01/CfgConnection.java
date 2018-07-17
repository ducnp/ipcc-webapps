package vn.vnpt.ssdc.cfg_idb_01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import vn.vnpt.ssdc.ApplicationProperties;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

@Configuration
@EnableConfigurationProperties(ApplicationProperties.class)
public class CfgConnection {
    private static org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(CfgConnection.class);
    private static CfgConnection mysqlc = null;
    private static Connection conn = null;
    public final static int TIME_CACHE_15m = 60 * 15;
    public static  ApplicationProperties applicationProperties;

    @Autowired
    public CfgConnection(ApplicationProperties applicationProperties) {
        this.applicationProperties = applicationProperties;
    }

    public synchronized Connection getConnection(){
        return conn;
    }
    static long startCon = System.currentTimeMillis();
    private static long lastConnection = 0;
    public synchronized static CfgConnection getInstance(){
        startCon = System.currentTimeMillis();
        if(mysqlc == null){
            mysqlc = new CfgConnection(applicationProperties);
        }

        boolean focus = false;
        long diff = (System.currentTimeMillis() - lastConnection) /1000;
        if(diff > TIME_CACHE_15m){
            focus = true;
            logger.info("No connect in: "+diff +"s");
            lastConnection = System.currentTimeMillis();
        }

        try {
            if (conn == null || conn.isClosed() || focus) {
                //conn.setNetworkTimeout(Executors.newFixedThreadPool(10), 160000);
                logger.info("reconnect DB");
                //if (conn != null){
                //conn.close();
                //conn = null;
                //}
                Class.forName(applicationProperties.getCfg_idb_01().getDriver());
                conn = DriverManager.getConnection(applicationProperties.getCfg_idb_01().getUrl(), applicationProperties.getCfg_idb_01().getUser(),
                    applicationProperties.getCfg_idb_01().getPass());
            }
        } catch (Exception ex) {
                logger.error("getInstance", ex);
        }
        return mysqlc;
    }

    public static String getAgentName(long owner_id) {
        PreparedStatement psSelect = null;
        final String sql = "SELECT * FROM cfg_person where dbid=? ";
        ResultSet rs = null;
        String result = null;
        try {
            Connection conn = CfgConnection.getInstance().getConnection();
            psSelect = conn.prepareStatement(sql);
            psSelect.clearParameters();
            psSelect.setLong(1, owner_id);
            rs = psSelect.executeQuery();
            while (rs.next()) {
                result = rs.getString("user_name");
            }
        } catch (Exception ex) {
            logger.error("getAgentName", ex);
        } finally {
            try {
                if (psSelect != null) {
                    psSelect.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception ex) {
                logger.error(ex.toString());
            }
        }
        return result;
    }

    public static List<String> searchAgentName(String agent_name) {
        PreparedStatement psSelect = null;
        String sql = " SELECT dbid FROM cfg_person where user_name like '%xxxx%' ";
        sql = sql.replaceAll("xxxx", agent_name);
        ResultSet rs = null;
        List<String> result = new LinkedList<>();
        try {
            Connection conn = CfgConnection.getInstance().getConnection();
            psSelect = conn.prepareStatement(sql);
            psSelect.clearParameters();
            rs = psSelect.executeQuery();
            while (rs.next()) {
                result.add(rs.getLong("dbid")+"");
            }
        } catch (Exception ex) {
            logger.error("searchAgentName", ex);
        } finally {
            try {
                if (psSelect != null) {
                    psSelect.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception ex) {
                logger.error(ex.toString());
            }
        }
        return result;
    }

}
