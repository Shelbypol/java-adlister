package com.codeup.adlister.dao;

import com.codeup.adlister.models.Cat;
import com.mysql.cj.jdbc.Driver;
import models.Config;

import java.sql.*;

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
    public Cat findByCategory(String catName) {
        String query = "SELECT * FROM cats WHERE cat_name = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, catName);
            return extractCat(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding category", e);
        }
    }

    private Cat extractCat(ResultSet rs) throws SQLException {
        if (!rs.next()) {
            return null;
        }
        return new Cat(
                rs.getLong("id"),
                rs.getString("cat-name")
        );
    }

    @Override
    public Long insert(Cat cat) {
        String query = "INSERT INTO cats(cat_name) VALUES (?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, cat.getCatName());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error adding category", e);
        }
    }
}

