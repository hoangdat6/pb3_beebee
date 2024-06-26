package com.example.pbl3_1.entity;

import com.example.pbl3_1.entity.myEnum.ERole;
import com.example.pbl3_1.entity.myEnum.Egender;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Timestamp;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class User {
    private Long id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private Egender gender;
    private Date dob;
    private Timestamp createdAt;
    private String avatar;
    private String fullname;
    private Long sellerId;
    private ERole role;

    public User() {
    }
    public void SetAttribute(String username, String password, String email, Egender gender, Date dob, Timestamp createdAt)
    {
        this.username = username;
        this.password = password;
        this.email = email;
        this.gender = gender;
        this.dob = dob;
        this.createdAt = createdAt;
    }
//    public void setPassword(String newPass)
//    {
//        password = newPass;
//    }
}
