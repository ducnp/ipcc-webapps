//package vn.vnpt.ssdc.cfg_idb_01;
//
//import javax.persistence.EntityManagerFactory;
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
//import org.springframework.boot.context.properties.ConfigurationProperties;
//import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
//import org.springframework.orm.jpa.JpaTransactionManager;
//import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
//import org.springframework.transaction.PlatformTransactionManager;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//@Configuration
//@EnableTransactionManagement
//@EnableJpaRepositories(
//    entityManagerFactoryRef = "cfgEntityManagerFactory",
//    transactionManagerRef = "cfgTransactionManager",
//    basePackages = { "vn.vnpt.ssdc.cfg_idb_01.entity" }
//)
//public class CfgIdb01Config {
//
//    @Bean(name = "cfgDataSource")
//    @ConfigurationProperties(prefix="cfg_idb_01.datasource")
//    public DataSource cfgDataSource() {
//        return DataSourceBuilder.create().build();
//    }
//
//    @Bean(name = "cfgEntityManagerFactory")
//    public LocalContainerEntityManagerFactoryBean
//    cfgEntityManagerFactory(
//        EntityManagerFactoryBuilder builder,
//        @Qualifier("cfgDataSource") DataSource dataSource
//    ) {
//        return
//            builder
//                .dataSource(dataSource)
//                .packages("vn.vnpt.ssdc.cfg_idb_01.entity")
//                .persistenceUnit("cfg_idb_01")
//                .build();
//    }
//
//    @Bean(name = "cfgTransactionManager")
//    public PlatformTransactionManager cfgTransactionManager(
//        @Qualifier("cfgEntityManagerFactory") EntityManagerFactory
//            cfgEntityManagerFactory
//    ) {
//        return new JpaTransactionManager(cfgEntityManagerFactory);
//    }
//
//}
