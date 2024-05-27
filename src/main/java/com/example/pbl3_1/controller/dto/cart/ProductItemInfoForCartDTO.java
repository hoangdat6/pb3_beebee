package com.example.pbl3_1.controller.dto.cart;


import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@Builder
@ToString
public class ProductItemInfoForCartDTO {
    private Long shopId; // id của shop
    private String shopName; // tên shop
    private String shopImg; // ảnh shop
    private Boolean sellerIsLocked; // shop đã bị khóa chưa
    private Long shoppingCartItemId; // id của sản phẩm trong cart
    private Long productId; // id của sản phẩm
    private Long productItemId; // id của sản phẩm con
    private String imgPath; // đường dẫn ảnh
    private String productName; // tên sản phẩm
    private Integer quantity; // số lượng trong cart
    private Integer price; // giá
    private Integer discount; // giảm giá
    private Integer qtyInStock; // số lượng trong kho
    private Boolean productIsDeleted; // sản phẩm đã bị xóa chưa
    private Boolean isSoldOut; // số lượng trong kho có lớn hơn 0 không
    private Boolean isOutOfStock; // số lượng trong cart có lớn hơn số lượng trong kho không
}


