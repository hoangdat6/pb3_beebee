package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.VariationOptionDAO;
import com.example.pbl3_1.entity.VariationOption;
import com.example.pbl3_1.mapper.VariationOptionMapper;

import java.util.List;

public class VariationOptionDAOImpl implements VariationOptionDAO {
    GenericDAO<VariationOption> genericDAO = new AbstractDAOImpl<>();
    @Override
    public List<VariationOption> getVariationOptionsByVariationId(Long id) {
        String sql = "SELECT vo.id, vo.variation_id, vo.value FROM variation_option vo WHERE variation_id = ?";
        return genericDAO.query(sql, new VariationOptionMapper(), id);
    }
}
