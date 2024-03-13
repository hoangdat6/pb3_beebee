package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.UserDAO;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.mapper.UserMapper;

import java.util.List;

public class UserDAOimpl implements UserDAO {
    AbstractDAOImpl<User> abstractDAO = new AbstractDAOImpl<User>();
    @Override
    public void save(User object) {
        String sql = "INSERT INTO users(username, password, email, phone, gender, dob, created_at) VALUES(?,?,?,?,?,?,?)";
        abstractDAO.save(sql, object.getUsername(), object.getPassword(), object.getEmail(), object.getPhone(), object.getGender().toString(), object.getDob(), object.getCreatedAt());
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
    public User findByUsernameAndPassword(String username, String password) {
        StringBuilder sql = new StringBuilder("SELECT * FROM users WHERE (username = ? OR email = ? OR phone = ?) AND password = ?");
        List<User> users = abstractDAO.query(sql.toString(), new UserMapper(), username, username, username, password);
        return (users.isEmpty() ? null : users.get(0));
    }

    @Override
    public User findByUsernameOrEmailOrPhone(String username, String email, String phone) {
        StringBuilder sql = new StringBuilder("SELECT * FROM users WHERE username = ? OR email = ? OR phone = ?");
        List<User> users = abstractDAO.query(sql.toString(), new UserMapper(), username, email, phone);
        return (users.isEmpty() ? null : users.get(0));
    }
}
