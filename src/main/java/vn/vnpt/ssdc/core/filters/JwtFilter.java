package vn.vnpt.ssdc.core.filters;

import io.jsonwebtoken.*;
import org.apache.log4j.MDC;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.filter.GenericFilterBean;
import vn.vnpt.ssdc.core.utils.SecurityUtils;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.*;

import static vn.vnpt.ssdc.core.Constants.*;

public class JwtFilter extends GenericFilterBean {
    private static Logger log = LoggerFactory.getLogger(JwtFilter.class);
    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        try {
            HttpServletRequest request = (HttpServletRequest) servletRequest;
            String authorization = request.getHeader(AUTH_HEADER_STRING);
            if (authorization != null && authorization.startsWith(AUTH_TOKEN_PREFIX)) {
                String token = authorization.substring(AUTH_TOKEN_PREFIX.length());
                if (validateToken(token)) {
                    Authentication authentication = getAuthentication(token);
                    SecurityContextHolder.getContext().setAuthentication(authentication);
                }
            }

            String mdcData = String.format("[userId:%s | requestId:%s | baseUrl:%s] ", SecurityUtils.getCurrentUserLogin(), UUID.randomUUID().toString(), request.getServletPath() + " " + request.getMethod());
            MDC.put("mdcData", mdcData); //Variable 'mdcData' is referenced in Spring Boot's logging.pattern.level property

            filterChain.doFilter(servletRequest, servletResponse);
        } finally {
            // Tear down MDC data:
            // ( Important! Cleans up the ThreadLocal data again )
            MDC.clear();
        }
    }


    private Authentication getAuthentication(String token) {
        Claims claims = Jwts.parser()
                .setSigningKey(JWT_SECRET)
                .parseClaimsJws(token)
                .getBody();
        List<String> scopes = (ArrayList)claims.get(JWT_SCOPE);
        Set<GrantedAuthority> authorities = new HashSet<>();
        for(String scope : scopes) {
            authorities.add(new SimpleGrantedAuthority(scope));
        }

        User principal = new User(claims.getSubject(), "", authorities);

        return new UsernamePasswordAuthenticationToken(principal, token, authorities);
    }

    private boolean validateToken(String authToken) {
        try {
            Jwts.parser().setSigningKey(JWT_SECRET).parseClaimsJws(authToken);
            return true;
        } catch (SignatureException e) {
            log.info("Invalid JWT signature.");
            log.trace("Invalid JWT signature trace: {}", e);
        } catch (MalformedJwtException e) {
            log.info("Invalid JWT token.");
            log.trace("Invalid JWT token trace: {}", e);
        } catch (ExpiredJwtException e) {
            log.info("Expired JWT token.");
            log.trace("Expired JWT token trace: {}", e);
        } catch (UnsupportedJwtException e) {
            log.info("Unsupported JWT token.");
            log.trace("Unsupported JWT token trace: {}", e);
        } catch (IllegalArgumentException e) {
            log.info("JWT token compact of handler are invalid.");
            log.trace("JWT token compact of handler are invalid trace: {}", e);
        }
        return false;
    }
}
