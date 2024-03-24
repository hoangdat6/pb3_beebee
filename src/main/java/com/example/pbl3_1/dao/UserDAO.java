package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.CommonDAO;
import com.example.pbl3_1.entity.User;

import java.util.AbstractMap;

public interface UserDAO extends CommonDAO<User> {
    User findByUsername(String username);
    User findByUsernameAndPassword(String username, String password);
    AbstractMap.SimpleEntry<Boolean, Boolean> findByUsernameOrEmail(String username, String email);
}
