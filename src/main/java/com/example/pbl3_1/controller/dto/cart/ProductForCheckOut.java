package com.example.pbl3_1.controller.dto.cart;

import com.example.pbl3_1.controller.dto.product.VariationDTO;
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
    Long productItemId;
    Long productId;
    String imgPath;
    String name;
    Integer qtyInStock;
    Integer quantity;
    Float price;
    Integer discount;
    Boolean isDeleted;
    List<VariationDTO> variations;
}
