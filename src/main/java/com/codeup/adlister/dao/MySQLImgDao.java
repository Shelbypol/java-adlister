package com.codeup.adlister.dao;

import models.Config;

import java.io.InputStream;
import java.sql.*;

public class MySQLImgDao {

    private Connection connection = null;

    public MySQLImgDao(Config config) {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

//    @Override
    public Long insert(long adsId, InputStream img) {
        try {
            String insertQuery = "INSERT INTO ad_img(ads_id, ad_img_id) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, adsId);
            stmt.setBinaryStream(2, img);

            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
        return null;
    }
}
