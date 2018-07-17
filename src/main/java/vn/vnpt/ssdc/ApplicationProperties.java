package vn.vnpt.ssdc;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(
        prefix = "application",
        ignoreUnknownFields = false
)
public class ApplicationProperties {

    private Ldap ldap;
    private Cfg_idb_01 cfg_idb_01;

    public ApplicationProperties() {
    }

    public Ldap getLdap() {
        return ldap;
    }

    public void setLdap(Ldap ldap) {
        this.ldap = ldap;
    }

    public Cfg_idb_01 getCfg_idb_01() {
        return cfg_idb_01;
    }

    public void setCfg_idb_01(Cfg_idb_01 cfg_idb_01) {
        this.cfg_idb_01 = cfg_idb_01;
    }

    public static class Ldap {
        private boolean enabled;
        private String url = "";
        private String base = "";
        private String userDN = "";
        private String password = "";
        private String listMail = "";

        public Ldap() {
        }

        public String getListMail() {
            return listMail;
        }

        public void setListMail(String listMail) {
            this.listMail = listMail;
        }

        public boolean isEnabled() {
            return enabled;
        }

        public void setEnabled(boolean enabled) {
            this.enabled = enabled;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public String getBase() {
            return base;
        }

        public void setBase(String base) {
            this.base = base;
        }

        public String getUserDN() {
            return userDN;
        }

        public void setUserDN(String userDN) {
            this.userDN = userDN;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }
    }

    public static class Cfg_idb_01 {
        private String url = "";
        private String user = "";
        private String pass = "";
        private String driver = "";

        public Cfg_idb_01() {
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public String getUser() {
            return user;
        }

        public void setUser(String user) {
            this.user = user;
        }

        public String getPass() {
            return pass;
        }

        public void setPass(String pass) {
            this.pass = pass;
        }

        public String getDriver() {
            return driver;
        }

        public void setDriver(String driver) {
            this.driver = driver;
        }
    }

}
