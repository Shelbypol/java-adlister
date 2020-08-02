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
    public Long insert(long adsId , long catsId) {
        try {
            String insertQuery = "INSERT INTO ad_cats(ads_id, cats_id) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, adsId);
            stmt.setLong(2, catsId);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
        return null;
    }

//    public List<Cat> list() throws SQLException {
//        List<Cat> listCategory = new ArrayList<>();
//        PreparedStatement stmt = null;
//        try {
//            stmt = connection.prepareStatement("SELECT * FROM cats ORDER BY cat_name");
//            Statement statement = connection.createStatement();
//            ResultSet result = statement.executeQuery(String.valueOf(stmt));
//
//            while (result.next()) {
//                int id = result.getInt("category_id");
//                String name = result.getString("name");
//                Cat category = new Cat(id, name);
//
//                listCategory.add(category);
//            }
//
//        } catch (SQLException ex) {
//            ex.printStackTrace();
//            throw ex;
//        }
//
//        return listCategory;
//    }




    @Override
    public void deleteAd(long id) {

    }
}


