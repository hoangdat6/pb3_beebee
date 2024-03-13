package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.User;

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
    User findByUsernameOrEmailOrPhone(String username, String email, String phone);
    public void save(User object);
}
