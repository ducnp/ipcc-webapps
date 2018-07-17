package vn.vnpt.ssdc.ucs;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(
    entityManagerFactoryRef = "ucsEntityManagerFactory",
    transactionManagerRef = "ucsTransactionManager",
    basePackages = { "vn.vnpt.ssdc.ucs.entity" }
)
public class DBUcsConfig {

    @Bean(name = "ucsDataSource")
    @ConfigurationProperties(prefix="ucs.datasource")
    public DataSource ucsDataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean(name = "ucsEntityManagerFactory")
    public LocalContainerEntityManagerFactoryBean
    ucsEntityManagerFactory(
        EntityManagerFactoryBuilder builder,
        @Qualifier("ucsDataSource") DataSource dataSource
    ) {
        return
            builder
                .dataSource(dataSource)
                .packages("vn.vnpt.ssdc.ucs.entity")
                .persistenceUnit("ucs")
                .build();
    }

    @Bean(name = "ucsTransactionManager")
    public PlatformTransactionManager ucsTransactionManager(
        @Qualifier("ucsEntityManagerFactory") EntityManagerFactory
            ucsEntityManagerFactory
    ) {
        return new JpaTransactionManager(ucsEntityManagerFactory);
    }

}

