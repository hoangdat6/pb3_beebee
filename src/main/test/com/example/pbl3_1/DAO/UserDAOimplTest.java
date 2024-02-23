package com.example.pbl3_1.DAO;

import com.example.pbl3_1.DAO.impl.UserDAOimpl;
import com.example.pbl3_1.entity.User;
import org.junit.Test;

public class UserDAOimplTest {
    @Test
    public void testSave() throws Exception {
        UserDAOimpl userDAOimpl = new UserDAOimpl();
//        User user = User.builder()
//                .username("test")
//                .password("test")
//                .email("test")
//                .build();
//        userDAOimpl.save(user);

        User user = userDAOimpl.findByUserUsernameAndPassword("test", "test");

        System.out.println(user.toString());
    }
}