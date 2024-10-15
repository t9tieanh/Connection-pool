package com.jdbc.dao;

import com.jdbc.mapper.UserMapper;
import com.jdbc.model.UserModel;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO extends AbstractDAO<UserModel>{
    public List<UserModel> findAll() {
        String sql = "SELECT * FROM User";
        return query(sql, new UserMapper());
    }

    public UserModel findById(int id) {
        String sql = "SELECT * FROM User WHERE UserID = ?";
        List<UserModel> users = query(sql, new UserMapper(), id);  // Truy vấn với userId
        return users.isEmpty() ? null : users.get(0);
    }

    public boolean checkUserExits (String email) {
        String sql = "SELECT * FROM User WHERE Email = ?";
        List<UserModel> users = query(sql, new UserMapper(), email);
        return !users.isEmpty();
    }

    public int insertUser (String email ,String firstName, String lastName) {

        String sql = "INSERT INTO User(Email, FirstName, LastName) VALUES (?, ?, ?)";
        return insert(sql, email, firstName, lastName);
    }
}
