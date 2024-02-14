package com.example.pbl3_1.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class Product {
    private Long id;
    private String name;
    private String description;
    private String productImgPath;
    private int categoryId;
    private int sellerId;
}
