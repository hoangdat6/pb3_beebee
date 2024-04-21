package com.example.pbl3_1.service;

import com.example.pbl3_1.dao.impl.UserDAOimpl;
import com.example.pbl3_1.dao.UserDAO;
import com.example.pbl3_1.entity.User;

import java.sql.Date;
import java.util.AbstractMap;

public class UserServiceImpl implements UserService{
//    @Inject
    UserDAO userDAO = new UserDAOimpl();

    @Override
    public User findByUsernameAndPassword(String username, String password) {
        return userDAO.findByUsernameAndPassword(username, password);
    }

    @Override
    public AbstractMap.SimpleEntry<Boolean, Boolean> findByUsernameOrEmail(String username, String email) {
        return userDAO.findByUsernameOrEmail(username, email);
    }

    @Override
    public String findUsernameByEmail(String username) {
        return userDAO.findUsernameByEmail(username);
    }

    @Override
    public Long save(User object) {
        return userDAO.save(object);
    }

    @Override
    public boolean findEmail(String email) {
        return userDAO.findEmail(email);
    }

    @Override
    public Integer updatePass(String username, String password) {
        return userDAO.updatePass(username, password);
    }

    @Override
    public Integer updateInfor(User user) {
        return userDAO.updateInfor(user);
    }

}
