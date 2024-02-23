package com.example.pbl3_1.mapper;

import com.example.pbl3_1.entity.Egender;
import com.example.pbl3_1.entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<User>{

    @Override
    public User mapRow(ResultSet rs) {
        User user = null;
        try {
            user = User.builder().
                    id(rs.getLong("id")).
                    username(rs.getString("username")).
                    password(rs.getString("password")).
                    email(rs.getString("email")).
                    phone(rs.getString("phone")).
                    dob(rs.getDate("dob")).
//                    gender(Egender.fromString(rs.getString("gender"))).
                    createAt(rs.getTimestamp("created_at")).
                    build();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
