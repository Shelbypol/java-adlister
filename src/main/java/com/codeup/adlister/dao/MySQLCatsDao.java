package com.codeup.adlister.dao;

import com.codeup.adlister.models.Cat;
import com.mysql.cj.jdbc.Driver;
import models.Config;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCatsDao implements Cats {
    private Connection connection;

    public MySQLCatsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }
    @Override
    public List<Cat> All() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM cats order by id");
            ResultSet rs = stmt.executeQuery();
            return createCategoriesFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

//    @Override
//    public List<Cat> cat() {
//        return null;
//    }

    private Cat extractCat(ResultSet rs) throws SQLException {
        return new Cat(
                rs.getInt("id"),
                rs.getString("name")
        );
    }

    private List<Cat> createCategoriesFromResults(ResultSet rs) throws SQLException {
        List<Cat> cat = new ArrayList<>();
        while (rs.next()) {
            cat.add(extractCat(rs));
        }
        return cat;
    }

    @Override
    public Long insert(Long adsIdFk , Long catsIdFk) {
        try {
//            String insertQuery = "INSERT INTO cats(ad_id_fk) VALUES (?)";
            String insertQuery = "INSERT INTO ad_cats(ads_id_fk, cats_id_fk) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, adsIdFk);
//            stmt.setLong(2, catsIdFk);

            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
        return null;
    }

    @Override
    public void deleteAd(long id) {

    }
}


