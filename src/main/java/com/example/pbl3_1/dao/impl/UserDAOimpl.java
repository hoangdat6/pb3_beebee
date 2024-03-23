package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.UserDAO;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.mapper.UserMapper;

import java.util.AbstractMap;
import java.util.List;

public class UserDAOimpl implements UserDAO {
    AbstractDAOImpl<User> abstractDAO = new AbstractDAOImpl<User>();
    @Override
    public Long save(User object) {
        String sql = "INSERT INTO users(username, password, email, phone, gender, dob, created_at) VALUES(?,?,?,?,?,?,?)";
        return abstractDAO.save(sql, object.getUsername(), object.getPassword(), object.getEmail(), object.getPhone(), object.getGender().toString(), object.getDob(), object.getCreatedAt());
    }

    @Override
    public void update(User object) {

    }

    @Override
    public void deleteById(Long object) {

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
    public AbstractMap.SimpleEntry<Boolean, Boolean> findByUsernameOrEmail(String username, String email) {
        StringBuilder sql1 = new StringBuilder("SELECT * FROM users WHERE username = ?");
        StringBuilder sql2 = new StringBuilder("SELECT * FROM users WHERE email = ?");
        List<User> users1 = abstractDAO.query(sql1.toString(), new UserMapper(), username);
        List<User> users2 = abstractDAO.query(sql2.toString(), new UserMapper(), email);
        return new AbstractMap.SimpleEntry<>(users1.isEmpty(), users2.isEmpty());
    }
}
