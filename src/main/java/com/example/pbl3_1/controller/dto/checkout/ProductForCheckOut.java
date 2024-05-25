package com.example.pbl3_1.controller.dto.checkout;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class ProductForCheckOut {
    private Long productItemId;
    private Long productId;
    private String imgPath;
    private String name;
    private Integer quantity;
    private Float price;
    private Integer discount;
    private Integer qtyInStock;
    private Boolean isDeleted; // sản phẩm đã bị xóa chưa
    private Boolean isSoldOut; // số lượng trong kho có lớn hơn 0 không
    private Boolean isOutOfStock; // số lượng trong cart có lớn hơn số lượng trong kho không
    private String variations;
}
