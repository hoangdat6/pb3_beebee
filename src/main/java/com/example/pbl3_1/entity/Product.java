package com.example.pbl3_1.entity;


import lombok.*;

import java.sql.Date;

@Getter
@Setter
@Builder
@AllArgsConstructor
@ToString
public class Product {
    private Long id;
    private String name;
    private Float price;
    private Float discount;
    private String description;
    private String productImgPath;
    private Category categoryId;
    private Long sellerId;
    private Date createdAt;
}
