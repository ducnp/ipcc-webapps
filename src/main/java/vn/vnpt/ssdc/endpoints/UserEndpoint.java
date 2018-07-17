package vn.vnpt.ssdc.endpoints;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import vn.vnpt.ssdc.ApplicationProperties;
import vn.vnpt.ssdc.core.Constants;
import vn.vnpt.ssdc.endpoints.vm.LoginVM;
import vn.vnpt.ssdc.services.AuthService;

@RestController
@RequestMapping("/api/users")
@Configuration
@EnableConfigurationProperties(ApplicationProperties.class)
public class UserEndpoint {

    private AuthService authService;

    private ApplicationProperties applicationProperties;

    @Autowired
    public UserEndpoint(AuthService authService) {
        this.authService = authService;
    }

    @RequestMapping(path = "/login", method = RequestMethod.POST)
    public ResponseEntity<JWTToken> token(@RequestBody LoginVM loginVM) {
        String token = this.authService.login(loginVM.getUsername(),loginVM.getPassword(),loginVM.getRememberMe());
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.add(Constants.AUTH_HEADER_STRING,"Bearer " + token);

        boolean isMailVip = false;
        if(!applicationProperties.getLdap().getListMail().equals("")) {
            String[] lismail = applicationProperties.getLdap().getListMail().split(";");
            for(int i = 0; i < lismail.length; i++) {
                if(lismail[i].equals(loginVM.getUsername())) {
                    isMailVip = true;
                    break;
                }
            }
        }


        JWTToken jwtToken = new JWTToken(token, isMailVip);
        return new ResponseEntity<JWTToken>(jwtToken,httpHeaders, HttpStatus.OK);
    }

    @RequestMapping(path = "/test", method = RequestMethod.GET)
    public String token() {
            return "hihi";
    }


    /**
     * Object to return as body in JWT Authentication.
     */
    static class JWTToken {
        private boolean isMailVip;
        private String idToken;

        JWTToken(String idToken, boolean isMailVip) {
            this.idToken = idToken;
            this.isMailVip = isMailVip;
        }

        @JsonProperty("id_token")
        String getIdToken() {
            return idToken;
        }

        void setIdToken(String idToken) {
            this.idToken = idToken;
        }

        public boolean isMailVip() {
            return isMailVip;
        }

        public void setMailVip(boolean mailVip) {
            isMailVip = mailVip;
        }
    }

}
