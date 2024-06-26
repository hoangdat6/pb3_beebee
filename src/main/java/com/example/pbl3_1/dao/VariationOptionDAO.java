package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.product.VariationDTO;
import com.example.pbl3_1.entity.VariationOption;

import java.util.List;

public interface VariationOptionDAO {
    List<VariationOption> getVariationOptionsByVariationId(Long id);
    VariationOption getVariationOptionById(Long id);
    Long addVariationOption(VariationOption variationOption);
    Long checkVariationOptionExist(VariationOption variationOption);
    List<VariationDTO> getVariationDTOByProductItemId(Long id);
}
