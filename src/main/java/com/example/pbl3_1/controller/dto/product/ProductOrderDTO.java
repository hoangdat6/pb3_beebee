package com.example.pbl3_1.controller.dto.product;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@Builder
@ToString
public class ProductOrderDTO {
    Long id;
    String name;
    Integer price;
    Integer discount;
    String imgPath;
    Long variation1;
    Long variation2;
    String nameVariation1;
    String nameVariation2;
    Integer quantity;
}
