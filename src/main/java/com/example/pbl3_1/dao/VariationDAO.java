package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Variation;

import java.util.List;

public interface VariationDAO {
    public List<Variation> getVariationsByProductId(Long productId);
    public Long addVariation(Variation variation);
    public Variation getVariationById(Long Id);

}
