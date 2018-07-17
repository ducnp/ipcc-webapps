package vn.vnpt.ssdc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * Created by vietnq on 10/20/16.
 */


@SpringBootApplication
@EnableScheduling
public class UserWebApplication {
    public static void main(String[] args) {
        SpringApplication.run(UserWebApplication.class,args);
    }
}
