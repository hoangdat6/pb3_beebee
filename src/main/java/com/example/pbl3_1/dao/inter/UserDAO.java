package com.example.pbl3_1.dao.inter;

import com.example.pbl3_1.dao.CommonDAO;
import com.example.pbl3_1.entity.User;

public interface UserDAO extends CommonDAO<User> {
    User findByUsername(String username);
    User findByUsernameAndPassword(String username, String password);
}
