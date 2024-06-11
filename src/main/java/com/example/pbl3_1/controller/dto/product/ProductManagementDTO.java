package com.example.pbl3_1.controller.dto.product;

import lombok.*;

import java.math.BigInteger;

@Getter
@Setter
@Builder
@AllArgsConstructor
@ToString
public class ProductManagementDTO {
    private Long id;
    private String name;
    private Integer min_price;
    private Integer max_price;
    private Integer quantity;
    private Long sales;
    private String statusName;
}
