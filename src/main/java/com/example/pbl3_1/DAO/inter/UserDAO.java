package com.example.pbl3_1.DAO.inter;

import com.example.pbl3_1.DAO.CommonDAO;
import com.example.pbl3_1.entity.User;

public interface UserDAO extends CommonDAO<User> {
    User findByUsername(String username);
    User findByUserUsernameAndPassword(String username, String password);
}
