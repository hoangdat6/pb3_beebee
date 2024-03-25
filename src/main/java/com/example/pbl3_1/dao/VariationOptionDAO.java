package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.VariationOption;

import java.util.List;

public interface VariationOptionDAO {
    public List<VariationOption> getVariationOptionsByVariationId(Long id);
}
