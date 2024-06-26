package com.example.pbl3_1.mapper;

import com.example.pbl3_1.entity.myEnum.ERole;
import com.example.pbl3_1.entity.myEnum.Egender;
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
            user.setGender(Egender.fromString(rs.getString("gender")));
            user.setFullname(rs.getString("fullname"));
            user.setCreatedAt(rs.getTimestamp("created_at"));
            user.setAvatar(rs.getString("avatar"));
            user.setRole(ERole.fromString(rs.getString("role")));

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
