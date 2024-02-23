package com.example.pbl3_1.DAO.impl;

import com.example.pbl3_1.DAO.inter.UserDAO;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.mapper.UserMapper;

import java.util.List;

public class UserDAOimpl implements UserDAO {
    AbstractDAO<User> abstractDAO = new AbstractDAO<User>();
    @Override
    public void save(User object) {
        String sql = "INSERT INTO users(username, password, email, phone, gender, dob, created_at) VALUES(?,?,?,?,?,?,?)";
        abstractDAO.save(sql, object.getUsername(), object.getPassword(), object.getEmail(), object.getPhone(), object.getGender(), object.getDob(), object.getCreateAt());
    }

    @Override
    public void update(User object) {

    }

    @Override
    public void delete(User object) {

    }

    @Override
    public User findById(int id) {
        String sql = "SELECT * FORM users WHERE id = ?";
//        User user = (User)abstractDAO.findById(sql, id);
        return null;
    }

    @Override
    public User findByUsername(String username) {
        return null;
    }

    @Override
    public User findByUserUsernameAndPassword(String username, String password) {
        StringBuilder sql = new StringBuilder("SELECT * FROM users WHERE username = ? AND password = ?");
        List<User> users = abstractDAO.query(sql.toString(), new UserMapper(), username, password);
        return (users.isEmpty() ? null : users.get(0));
    }
}
