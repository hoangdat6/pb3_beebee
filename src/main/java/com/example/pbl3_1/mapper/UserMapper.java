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
            user = new User();
            user.setId(rs.getLong("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setEmail(rs.getString("email"));
            user.setPhone(rs.getString("phone"));
            user.setDob(rs.getDate("dob"));
//                    gender(Egender.fromString(rs.getString("gender"))).
            user.setCreateAt(rs.getTimestamp("created_at"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
