package com.example.pbl3_1.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.TimeZone;

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
    private String imgPath;

    public User() {
    }
    public void SetAttribute(String username, String password, String email, String phone, Egender gender, Date dob, Timestamp createdAt)
    {
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.dob = dob;
        this.createdAt = createdAt;
    }
//    public void setPassword(String newPass)
//    {
//        password = newPass;
//    }
}
