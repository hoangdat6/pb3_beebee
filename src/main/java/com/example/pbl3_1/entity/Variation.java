package com.example.pbl3_1.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class Variation {
    Long id;
    String name;
    List<VariationOption> variationOptions;

    public Variation() {
    }
}
