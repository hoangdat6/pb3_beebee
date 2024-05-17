package com.example.pbl3_1.controller.dto.product;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@ToString
public class VariationDTO {
    private Long id;
    private String name;
    private String value;
}
