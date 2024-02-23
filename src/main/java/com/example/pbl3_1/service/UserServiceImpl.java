package com.example.pbl3_1.service;

import com.example.pbl3_1.DAO.impl.UserDAOimpl;
import com.example.pbl3_1.DAO.inter.UserDAO;
import com.example.pbl3_1.entity.User;
import jakarta.inject.Inject;

public class UserServiceImpl implements UserService{
//    @Inject
    UserDAO userDAO = new UserDAOimpl();

    @Override
    public User findByUsernameAndPassword(String username, String password) {
        return userDAO.findByUserUsernameAndPassword(username, password);
    }

}
