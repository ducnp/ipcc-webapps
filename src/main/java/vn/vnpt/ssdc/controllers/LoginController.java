package vn.vnpt.ssdc.controllers;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import vn.vnpt.ssdc.ApplicationProperties;
import vn.vnpt.ssdc.voiceMail.entity.UserLogin;
import vn.vnpt.ssdc.voiceMail.entity.UserLoginRepository;
import vn.vnpt.ssdc.services.AuthService;

import java.util.HashMap;
import java.util.Map;

@Controller
@Configuration
@EnableConfigurationProperties(ApplicationProperties.class)
public class LoginController {
    private Logger logger = LoggerFactory.getLogger(LoginController.class);
    private ApplicationProperties applicationProperties;

    @Autowired
    private UserLoginRepository userLoginRepository;

    private AuthService authService;
    @Autowired
    public LoginController(AuthService authService, ApplicationProperties applicationProperties) {
        this.authService = authService;
        this.applicationProperties = applicationProperties;
    }

    @GetMapping("/login/checkLogin")
    @ResponseBody
    public Map<String,String> checkLogin(@RequestParam Map<String, String> params) {
        Map<String,String> mapReturn = new HashMap<>();
        try{
            UserLogin userLogin = new UserLogin();
            userLogin.setParams(params);
            String token = this.authService.login(userLogin.getUsername(),userLogin.getPassword(),true);
            mapReturn.put("token","Bearer " + token);

            boolean isMailVip = false;
            if(!applicationProperties.getLdap().getListMail().equals("")) {
                String[] lismail = applicationProperties.getLdap().getListMail().split(";");
                for(int i = 0; i < lismail.length; i++) {
                    if(lismail[i].equals(userLogin.getUsername())) {
                        isMailVip = true;
                        break;
                    }
                }
            }
            mapReturn.put("isMailVip", String.valueOf(isMailVip));
            return mapReturn;
        }catch(Exception ex){
            ex.printStackTrace();
            mapReturn.put("token","203");
        }finally {
            return mapReturn;
        }
    }

    /**
     * Object to return as body in JWT Authentication.
     */
    static class JWTToken {

        private String idToken;

        JWTToken(String idToken) {
            this.idToken = idToken;
        }

        @JsonProperty("id_token")
        String getIdToken() {
            return idToken;
        }

        void setIdToken(String idToken) {
            this.idToken = idToken;
        }
    }
}
