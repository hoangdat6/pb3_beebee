package com.example.pbl3_1.controller.dto.product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@Builder
public class SellerOrderProductDTO {
    private String id;
    private Long userId;
    private String name;
    private String avatar;
    private String status;
    private Integer shippingFee;
    private List<ProductOrderDTO> products;
    private List<OrderDiscountDTO> orderDiscounts;
}
