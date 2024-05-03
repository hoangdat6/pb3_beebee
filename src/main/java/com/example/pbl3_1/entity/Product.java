package com.example.pbl3_1.entity;


import lombok.*;

import java.sql.Date;
import java.sql.Timestamp;

@Getter
@Setter
@Builder
@AllArgsConstructor
@ToString
public class Product {
    private Long id;
    private String name;
    private Integer discount;
    private String description;
    private String productImgPath;
    private int categoryId;
    private Long sellerId;
    private Timestamp createdAt;
    private Long views;
    public Product(){

    }
}
