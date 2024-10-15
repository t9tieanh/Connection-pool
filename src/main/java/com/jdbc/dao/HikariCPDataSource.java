package com.jdbc.dao;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.util.ResourceBundle;

public class HikariCPDataSource {

    private static final HikariDataSource dataSource;


    static {
        HikariConfig config = new HikariConfig();
        ResourceBundle resourceBundle = ResourceBundle.getBundle("db");


        config.setJdbcUrl(resourceBundle.getString("url"));
        config.setUsername(resourceBundle.getString("user"));
        config.setPassword(resourceBundle.getString("password"));
        config.setDriverClassName(resourceBundle.getString("driveName"));


        config.setMaximumPoolSize(12);
        config.setMinimumIdle(5);
        config.setConnectionTimeout(10000);


        dataSource = new HikariDataSource(config);
    }


    public static HikariDataSource getDataSource() {
        return dataSource;
    }



}
