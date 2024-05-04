package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Variation;

import java.util.List;

public interface VariationDAO {
    List<Variation> getVariationsByProductId(Long productId);
    Long addVariation(Variation variation);
    Variation getVariationById(Long Id);

}
