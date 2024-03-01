package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.UserService;
import com.example.pbl3_1.service.UserServiceImpl;
import org.junit.Test;

public class UserDAOimplTest {
    @Test
    public void testSave() throws Exception {
        UserService userService = new UserServiceImpl();
        //        User user = User.builder()
//                .username("test")
//                .password("test")
//                .email("test")
//                .build();
//        userDAOimpl.save(user);

        User user = userService.findByUsernameAndPassword("test", "test");

        System.out.println(user.toString());
    }
}