package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.myEnum.ERole;
import com.example.pbl3_1.entity.User;

import java.util.AbstractMap;
import java.util.List;

public interface UserDAO extends CommonDAO<User> {
    User findByUsername(String username);
    User findByUsernameAndPassword(String username, String password);
    String findUsernameByEmail(String email);
    List<AbstractMap.SimpleEntry<String, String>> findByUsernameOrEmail(String username, String email);
    boolean findEmail(String email);
    Object updatePass(String username, String password);
    Object updateInfor(User user);

    void updateRole(Long userId, ERole eRole);
}
