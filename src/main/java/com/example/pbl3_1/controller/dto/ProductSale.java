package com.example.pbl3_1.controller.dto;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProductSale {
    private Long id;
    private Long sales; // số tiền bán được
}
