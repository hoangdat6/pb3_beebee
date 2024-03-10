package com.example.pbl3_1.entity;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Seller {
    private Long id;
    private String imgPath;
    private String shopName;
    private String description;
    private Long address;
    private User userId;
}
