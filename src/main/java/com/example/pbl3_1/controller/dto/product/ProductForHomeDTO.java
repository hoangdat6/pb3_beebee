package com.example.pbl3_1.controller.dto.product;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ProductForHomeDTO {
    private Long id;
    private String name;
    private Float price;
    private Float discount;
    private String productImgPath;
    private Long sellerId;
    private String sellerName;
    private String sellerAvatar;

    public ProductForHomeDTO(Long id, String name, Float price, Float discount, String productImgPath) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.productImgPath = productImgPath;
    }
}
