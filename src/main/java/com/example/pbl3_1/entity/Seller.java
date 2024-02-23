package com.example.pbl3_1.entity;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class Seller {
    private Long id;
    private String imgPath;
    private String shopName;
    private String description;
    private Long address;
    private Long userId;
}
