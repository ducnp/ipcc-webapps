package vn.vnpt.ssdc.services;

import io.github.jhipster.config.JHipsterProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import vn.vnpt.ssdc.core.errors.InvalidCredentialsException;
import vn.vnpt.ssdc.core.ldap.LdapClient;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.HashSet;
import static vn.vnpt.ssdc.core.Constants.*;

@Service
@Transactional
public class AuthService {

    private static Logger logger = LoggerFactory.getLogger(AuthService.class);

    private LdapClient ldapClient;
    private JHipsterProperties jHipsterProperties;
    private long tokenValidityInMilliseconds;
    private long tokenValidityInMillisecondsForRememberMe;

    @Autowired
    public AuthService(LdapClient ldapClient, JHipsterProperties jHipsterProperties) {
        this.ldapClient = ldapClient;
        this.jHipsterProperties = jHipsterProperties;
        this.tokenValidityInMilliseconds =
                1000 * jHipsterProperties.getSecurity().getAuthentication().getJwt().getTokenValidityInSeconds();
        this.tokenValidityInMillisecondsForRememberMe =
                1000 * jHipsterProperties.getSecurity().getAuthentication().getJwt().getTokenValidityInSecondsForRememberMe();
    }


    public String login(String username, String password, Boolean rememberMe) {
        logger.info("Generate token for user: {}", username);

        String checkLDAP = ldapClient.authenticate(username, password);
        if(checkLDAP == null) {
            throw new InvalidCredentialsException();
        }

        Date validity;
        long now = (new Date()).getTime();
        if (rememberMe) {
            validity = new Date(now + this.tokenValidityInMillisecondsForRememberMe);
        } else {
            validity = new Date(now + this.tokenValidityInMilliseconds);
        }
        String token = Jwts.builder()
                .setSubject(username)
                .setExpiration(validity)
                .claim(JWT_SCOPE,new HashSet<>())
                .signWith(SignatureAlgorithm.HS512, JWT_SECRET)
                .compact();
        logger.info("Token generated for user {}, token: {}", username, token);
        return token;
    }


}
