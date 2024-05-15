package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.CommonDAO;
import com.example.pbl3_1.entity.ERole;
import com.example.pbl3_1.entity.User;

import java.sql.Date;
import java.util.AbstractMap;
import java.util.List;

public interface UserDAO extends CommonDAO<User> {
    User findByUsername(String username);
    User findByUsernameAndPassword(String username, String password);
    String findUsernameByEmail(String email);
    List<AbstractMap.SimpleEntry<String, String>> findByUsernameOrEmail(String username, String email);
    boolean findEmail(String email);
    Integer updatePass(String username, String password);
    Integer updateInfor(User user);

    void updateRole(Long userId, ERole eRole);
}
