package com.example.pbl3_1.controller.dto.product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class ProductForCheckOut {
    Long shoppingCartItemId;
    Long productItemId;
    Long productId;
    Long sellerId;
    String name;
    Integer discount;
    Boolean isDeleted;
    String imgPath;
    Integer qtyInStock;
    Float price;
    Integer quantity;
    Float totalPrice;
    List<VariationDTO> variations;
}
