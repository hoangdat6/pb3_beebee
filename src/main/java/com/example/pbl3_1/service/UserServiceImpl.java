package com.example.pbl3_1.service;

import com.example.pbl3_1.dao.impl.UserDAOimpl;
import com.example.pbl3_1.dao.UserDAO;
import com.example.pbl3_1.entity.User;

public class UserServiceImpl implements UserService{
//    @Inject
    UserDAO userDAO = new UserDAOimpl();

    @Override
    public User findByUsernameAndPassword(String username, String password) {
        return userDAO.findByUsernameAndPassword(username, password);
    }
}
