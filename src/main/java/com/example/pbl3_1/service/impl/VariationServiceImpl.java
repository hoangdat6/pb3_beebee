package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.VariationDAO;
import com.example.pbl3_1.dao.VariationOptionDAO;
import com.example.pbl3_1.dao.impl.VariationDAOImpl;
import com.example.pbl3_1.dao.impl.VariationOptionDAOImpl;
import com.example.pbl3_1.entity.Variation;
import com.example.pbl3_1.service.VariationService;

import java.util.List;
import java.util.Objects;

public class VariationServiceImpl implements VariationService {
    VariationDAO variationDAO = new VariationDAOImpl();
    VariationOptionDAO variationOptionDAO =  new VariationOptionDAOImpl();
    @Override
    public List<Variation> getVariationsByProductId(Long id) {
        List<Variation> variations = variationDAO.getVariationsByProductId(id);
        for(Variation variation : variations) {
            variation.setVariationOptions(variationOptionDAO.getVariationOptionsByVariationId(variation.getId()));
        }
        return variations;
    }

    @Override
    public Long addVariation(Variation variation) {
        // nếu tên variation không rỗng thì thêm vào database
        if(!Objects.equals(variation.getName(), "")){
            return variationDAO.addVariation(variation);
        }
        return null;
    }
}
