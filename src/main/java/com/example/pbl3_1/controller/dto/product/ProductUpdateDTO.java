package com.example.pbl3_1.controller.dto.product;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@ToString
@Builder
public class ProductUpdateDTO {
    String imgPath;
    Long id;
    Integer quantity;
    Integer price;
    Long idVariation1;
    Long idVariation2;
    String variation1;
    String variation2;
}
