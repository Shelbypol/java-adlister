package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import models.Config;

import java.sql.*;

public class MySQLUsersDao implements Users {

    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User findByUsername(String username) {
        return null;
    }

    @Override
    public Long insert(User user) {
        String sql = createInsertQuery(user);
        try {
            PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new user.", e);
        }
    }

    private String createInsertQuery(User user) {
        return "INSERT INTO users(name, email, password) VALUES "
                + "(" + user.getUsername() + "', "
                + "'" + user.getEmail() + "',"
                + "'" + user.getPassword() + "')";
    }
}
