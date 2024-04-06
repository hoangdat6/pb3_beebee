package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.Variation;

import java.util.List;

public interface VariationService {
    public List<Variation> getVariationsByProductId(Long id);
    public Long addVariation(Variation variation);
}
