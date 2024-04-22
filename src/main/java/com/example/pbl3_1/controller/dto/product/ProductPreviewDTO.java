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
    private String productImgPath;
    private Long sellerId;
    private String sellerName;
    private String sellerAvatar;

    public ProductPreviewDTO(Long id, String name, Integer price, Integer discount, String productImgPath) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.productImgPath = productImgPath;
    }

    public void setMainImage(){
        this.productImgPath = this.productImgPath.split(",")[0];
    }
}
