package vn.vnpt.ssdc.calling;

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

//@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(
        entityManagerFactoryRef = "callingEntityManagerFactory",
        transactionManagerRef = "callingTransactionManager",
        basePackages = {"vn.vnpt.ssdc.calling.repo" }
)
public class CallingDBConfig {

    @Bean(name = "callingDataSource")
    @ConfigurationProperties(prefix="calling.datasource")
    public DataSource callingDataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean(name = "callingEntityManagerFactory")
    public LocalContainerEntityManagerFactoryBean
    callingEntityManagerFactory(
            EntityManagerFactoryBuilder builder,
            @Qualifier("callingDataSource") DataSource dataSource
    ) {
        return
                builder
                        .dataSource(dataSource)
                        .packages("vn.vnpt.ssdc.calling.entity")
                        .persistenceUnit("calling")
                        .build();
    }

    @Bean(name = "callingTransactionManager")
    public PlatformTransactionManager callingTransactionManager(
            @Qualifier("callingEntityManagerFactory") EntityManagerFactory
                    callingEntityManagerFactory
    ) {
        return new JpaTransactionManager(callingEntityManagerFactory);
    }

}
