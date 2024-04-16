package com.example.pbl3_1.controller.dto.product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class ProductForShoppingCartDTO {
    private Long id;
    private String name;
    private String ImgPath;
    private Float price;
    private Integer quantity;
    private String nameVariation1;
    private String valueVariation1;
    private String nameVariation2;
    private String valueVariation2;

}
