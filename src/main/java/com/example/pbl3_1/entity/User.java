package com.example.pbl3_1.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.TimeZone;

@Getter
@Setter
@Builder
public class User {
    private Long id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private Egender gender;
    private Date dob;
    private Timestamp createAt;
}
