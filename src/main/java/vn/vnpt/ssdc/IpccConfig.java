package vn.vnpt.ssdc;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import vn.vnpt.ssdc.core.filters.JwtFilter;

@Configuration
@EnableJpaRepositories("vn.vnpt.ssdc")
@EnableTransactionManagement
public class IpccConfig {

    /*
@Bean
public SessionFactory sessionFactory(EntityManagerFactory entityManagerFactory) {
    if(entityManagerFactory.unwrap(SessionFactory.class) == null){
        throw new NullPointerException("factory is not a hibernate factory");
    }
    return entityManagerFactory.unwrap(SessionFactory.class);
}
*/
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();
        config.addAllowedHeader("*");
        config.addAllowedMethod("*");
        config.addAllowedOrigin("*");
        source.registerCorsConfiguration("/api/**",config);
        return new CorsFilter(source);
    }

    @Bean
    public JwtFilter jwtFilter() {
        return new JwtFilter();
    }

}
