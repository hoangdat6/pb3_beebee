package com.example.pbl3_1.service;

import com.example.pbl3_1.dao.VariationOptionDAO;
import com.example.pbl3_1.dao.impl.VariationOptionDAOImpl;
import com.example.pbl3_1.entity.VariationOption;

public class VariationOptionServiceImpl implements VariationOptionService{
    VariationOptionDAO variationOptionDAO = new VariationOptionDAOImpl();
    @Override
    public Long addVariationOptionOrGet(VariationOption variationOption) {
        // nêu variationOption đã tồn tại thì trả về id của variationOption đó
        Long variationOptionId = variationOptionDAO.checkVariationOptionExist(variationOption);
        if(variationOptionId != null)
            return variationOptionId;
        else
            return variationOptionDAO.addVariationOption(variationOption);
    }
}
