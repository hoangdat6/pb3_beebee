package com.example.pbl3_1.controller.dto.product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.util.List;
@Getter
@Setter
@AllArgsConstructor
@Builder
public class UserOrderProductDTO {
    private String id;
    private Long sellerId;
    private String name;
    private String avatar;
    private String status;
    private List<ProductOrderDTO> products;
    private List<OrderDiscountDTO> orderDiscounts;
    private Integer shippingFee;
}
