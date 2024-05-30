package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.myEnum.ERole;
import com.example.pbl3_1.entity.User;

import java.util.AbstractMap;

public interface UserService {
//    public void addUser(String username, String password);
//    public boolean checkUser(String username, String password);
//    public boolean checkUsername(String username);
//    public boolean checkPassword(String password);
//    public boolean checkUsernamePassword(String username, String password);
//    public void deleteUser(String username);
//    public void updateUser(String username, String password);
//    public void showUser();

    public User findByUsernameAndPassword(String username, String password);
    AbstractMap.SimpleEntry<Boolean, Boolean> findByUsernameOrEmail(String username, String email);
    public String findUsernameByEmail(String email);
    public Long save(User object);
    public boolean findEmail(String email);
    public Object updatePass(String username, String password);
    public Object updateInfor(User user);

    void updateRole(Long userId, ERole eRole);
}
