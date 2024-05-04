package com.example.pbl3_1.controller.dto.product;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@Builder
@ToString
public class ProductPreviewDTO {
    private Long id;
    private String name;
    private Integer price;
    private Integer discount;
    private String imgPath;
    private Long sellerId;
    private String sellerName;
    private String sellerAvatar;

    public ProductPreviewDTO(Long id, String name, Integer price, Integer discount, String imgPath) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.imgPath = imgPath;
    }

    public void setMainImage(){
        this.imgPath = this.imgPath.split(",")[0];
    }
}
