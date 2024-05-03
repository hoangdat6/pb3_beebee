package com.example.pbl3_1.controller.dto.product;

import lombok.*;

import java.sql.Timestamp;
import java.util.List;

@Setter
@Getter
@Builder
@AllArgsConstructor
@ToString
public class SellerDTO {
    private Long id;
    private String avatar;
    private String coverImage;
    private String shopName;
    private String province;
    private Integer views;
    private Integer followers;
    private Timestamp createdAt;
    private Boolean isFollowed;
    private Integer countProduct;
    List<ProductPreviewDTO> mostViewedProducts;

    public SellerDTO() {
    }
}
