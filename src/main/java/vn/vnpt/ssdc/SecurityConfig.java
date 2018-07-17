package vn.vnpt.ssdc;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.filter.CorsFilter;
import vn.vnpt.ssdc.core.filters.JwtFilter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final CorsFilter corsFilter;
    private final JwtFilter jwtFilter;

    public SecurityConfig(CorsFilter corsFilter, JwtFilter jwtFilter) {
        this.corsFilter = corsFilter;
        this.jwtFilter = jwtFilter;
    }


    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring()
                .antMatchers(HttpMethod.OPTIONS, "/**")
                .antMatchers("/app/**/*.{js,html}")
                .antMatchers("/bower_components/**")
                .antMatchers("/i18n/**")
                .antMatchers("/assets/**")
                .antMatchers("/swagger-ui/index.html")
                .antMatchers("/cdr/**")
                .antMatchers("/package.json")
                .antMatchers("/modules/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .addFilterBefore(jwtFilter,UsernamePasswordAuthenticationFilter.class)
                .addFilterBefore(corsFilter, UsernamePasswordAuthenticationFilter.class)
                .exceptionHandling()
                .and()
                .csrf()
                .disable()
                .headers()
                .frameOptions()
                .disable()
                .and()
                .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authorizeRequests()
                .antMatchers("/api/users/login").permitAll()
                .antMatchers("/api/ucs/attachFile").permitAll()
                .antMatchers("/api/ucs/all").permitAll()
                .antMatchers("/api/ucs/result").permitAll()
                .antMatchers("/api/voicemail/result").permitAll()
                .antMatchers("/api/voicemail/report").permitAll()
                .antMatchers("/api/outbound/exportBirthday").permitAll()
                .antMatchers("/api/outbound/exportSurvey").permitAll()
                .antMatchers("/api/outbound/exportOther").permitAll()
                .antMatchers("/api/outbound/formSurvey").permitAll()
                .antMatchers("/api/outbound/formBirthday").permitAll()
                .antMatchers("/api/join-event/export").permitAll()
                .antMatchers("/api/result").permitAll()
                .antMatchers("/api/**").authenticated()
                .antMatchers("/swagger-ui/*").permitAll();

    }
}
