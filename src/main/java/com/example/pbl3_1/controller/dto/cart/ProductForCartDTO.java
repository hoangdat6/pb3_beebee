package com.example.pbl3_1.controller.dto.cart;

import com.example.pbl3_1.controller.dto.product.VariationDTO;
import lombok.*;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@Builder
@ToString
public class ProductForCartDTO {
    private Long shoppingCartItemId;
    private Long productId;
    private Long productItemId;
    private String imgPath;
    private String name;
    private Integer quantity;
    private Integer price;
    private Integer discount;
    private Integer qtyInStock;
    private Boolean isDeleted;
    private Boolean isSoldOut;
    private Boolean isOutOfStock;
    private List<VariationDTO> variations;
}
