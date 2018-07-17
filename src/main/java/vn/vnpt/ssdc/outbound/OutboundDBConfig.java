package vn.vnpt.ssdc.outbound;

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

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;


@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(
    entityManagerFactoryRef = "outboundEntityManagerFactory",
    transactionManagerRef = "outboundTransactionManager",
    basePackages = {"vn.vnpt.ssdc.outbound.repo"}
)
public class OutboundDBConfig {

    @Bean(name = "outboundDataSource")
    @ConfigurationProperties(prefix="outbound.datasource")
    public DataSource outboundDataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean(name = "outboundEntityManagerFactory")
    public LocalContainerEntityManagerFactoryBean
    outboundEntityManagerFactory(
        EntityManagerFactoryBuilder builder,
        @Qualifier("outboundDataSource") DataSource dataSource
    ) {
        return
            builder
                .dataSource(dataSource)
                .packages("vn.vnpt.ssdc.outbound.entity")
                .persistenceUnit("join_event")
                .build();
    }

    @Bean(name = "outboundTransactionManager")
    public PlatformTransactionManager outboundTransactionManager(
        @Qualifier("outboundEntityManagerFactory") EntityManagerFactory
            outboundEntityManagerFactory
    ) {
        return new JpaTransactionManager(outboundEntityManagerFactory);
    }

}

