package com.example.pbl3_1.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class ProductItem {
    private Long id;
    private Long productId;
    private String SKU;
    private Long variation1;
    private Long variation2;
    private Integer qtyInStock;
    private String imgPath;
    private Integer price;

    public ProductItem() {
    }
}
