package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.CommonDAO;
import com.example.pbl3_1.entity.User;

import java.sql.Date;
import java.util.AbstractMap;

public interface UserDAO extends CommonDAO<User> {
    User findByUsername(String username);
    User findByUsernameAndPassword(String username, String password);
    String findUsernameByEmail(String email);
    AbstractMap.SimpleEntry<Boolean, Boolean> findByUsernameOrEmail(String username, String email);
    boolean findEmail(String email);
    Integer updatePass(String username, String password);
    Integer updateInfor(User user);
}
