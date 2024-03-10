package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.VariationDAO;
import com.example.pbl3_1.entity.Variation;
import com.example.pbl3_1.mapper.VariationMapper;

import java.util.List;

public class VariationDAOImpl implements VariationDAO {
    private final GenericDAO<Variation> genericDAO = new AbstractDAOImpl<>();
    @Override
    public List<Variation> getVariationsByProductId(Long productId) {
        String sql = "SELECT * FROM variation WHERE product_id = ?";
        return genericDAO.query(sql, new VariationMapper(), productId);
    }
}
