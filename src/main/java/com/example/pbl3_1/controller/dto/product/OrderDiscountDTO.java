package com.example.pbl3_1.controller.dto.product;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@Builder
@ToString
public class OrderDiscountDTO {
    private Integer voucherDiscount;
    private String nameVoucher;
}
