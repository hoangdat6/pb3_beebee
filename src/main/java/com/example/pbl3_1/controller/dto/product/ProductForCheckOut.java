package com.example.pbl3_1.controller.dto.product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class ProductForCheckOut {
    Long id;
    Long productItemId;
    String name;
    String imgPath;
    Float price;
    Integer quantity;
    List<VariationDTO> variations;
}
