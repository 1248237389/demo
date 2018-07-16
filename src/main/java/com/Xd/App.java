package com.Xd;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.TransactionManagementConfigurer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.sql.DataSource;

/**
 * springboot程序的入口，扫描mybatis配置文件
 * 配置事务
 */
@RestController
@EnableTransactionManagement
@SpringBootApplication
@MapperScan("com.Xd.mapper")
public class App implements TransactionManagementConfigurer {
    @Resource(name="txManager")
    private PlatformTransactionManager txManager;
    public static void main(String[] args) {

        SpringApplication.run(App.class,args);
    }

    @Bean(name = "txManager")
    public PlatformTransactionManager txManager(DataSource dataSource) {
        return new DataSourceTransactionManager(dataSource);
    }
    public PlatformTransactionManager annotationDrivenTransactionManager() {
        return txManager;
    }
    @RequestMapping(value = "/",produces = "text/plain;charset=UTF-8")
    String index(){
        return "Hello Spring Boot!";
    }

}
