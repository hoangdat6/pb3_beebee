package com.example.pbl3_1.controller.dto.product;

import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@ToString
public class ShopForCartDTO {
    private Long sellerId;
    private String shopName;
    private String avatar;
    private Boolean isLocked;
    private List<ProductForShoppingCartDTO> productForShoppingCarts ;

    public ShopForCartDTO(Long sellerId, String avatar, String shopName, Boolean isLocked, ProductForShoppingCartDTO product) {
        this.sellerId = sellerId;
        this.avatar = avatar;
        this.shopName = shopName;
        this.isLocked = isLocked;
        productForShoppingCarts = new ArrayList<>();
        this.productForShoppingCarts.add(product);
    }
    public  void add (ProductForShoppingCartDTO product){

        this.productForShoppingCarts.add(product);
    }
}