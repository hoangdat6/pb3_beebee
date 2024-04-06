package com.example.pbl3_1.entity;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Timestamp;

@Getter
@Setter
public class Seller {
    private Long id;
    private String avatar;
    private String shopName;
    private String description;
    private Long address;
    private User userId;
    private Integer views;
    private Integer followers;
    private Timestamp createdAt;
}
