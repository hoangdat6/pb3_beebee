package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.impl.UserDAOimpl;
import com.example.pbl3_1.dao.UserDAO;
import com.example.pbl3_1.entity.myEnum.ERole;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.UserService;

import java.util.AbstractMap;
import java.util.List;

public class UserServiceImpl implements UserService {
//    @Inject
    UserDAO userDAO = new UserDAOimpl();

    @Override
    public User findByUsernameAndPassword(String username, String password) {
        return userDAO.findByUsernameAndPassword(username, password);
    }

    @Override
    public AbstractMap.SimpleEntry<Boolean, Boolean> findByUsernameOrEmail(String username, String email) {
        List<AbstractMap.SimpleEntry<String, String>> users = userDAO.findByUsernameOrEmail(username, email);
        if(users.size() == 2)
        {
            return new AbstractMap.SimpleEntry<>(false, false);
        }else if(users.isEmpty())
        {
            return new AbstractMap.SimpleEntry<>(true, true);
        }else
        {
            return new AbstractMap.SimpleEntry<>(!users.get(0).getKey().equals(username), !users.get(0).getValue().equals(email));
        }
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
    public Object updatePass(String username, String password) {
        return userDAO.updatePass(username, password);
    }

    @Override
    public Object updateInfor(User user) {
        return userDAO.updateInfor(user);
    }

    @Override
    public void updateRole(Long userId, ERole eRole) {
        userDAO.updateRole(userId, eRole);
    }

}
