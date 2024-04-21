package com.example.pbl3_1.controller.dto.product;

import com.example.pbl3_1.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;
import java.util.List;

@Setter
@Getter
@Builder
@AllArgsConstructor
public class SellerDTO {
    private Long id;
    private String avatar;
    private String shopName;
    private Integer views;
    private Integer followers;
    private Timestamp createdAt;
    private Boolean isFollowed;
    private Integer countProduct;
    List<ProductForHomeDTO> products;

    public SellerDTO() {
    }
}
