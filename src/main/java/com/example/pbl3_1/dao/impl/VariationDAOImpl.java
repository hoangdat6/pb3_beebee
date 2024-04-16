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
        String sql = "SELECT v.id, v.name FROM variation v WHERE product_id = ?";
        return genericDAO.query(sql, new VariationMapper(), productId);
    }

    @Override
    public Long addVariation(Variation variation) {
        String sql = "INSERT INTO variation (name, product_id) VALUES (?, ?)";
        return genericDAO.save(sql, variation.getName(), variation.getProductId());
    }
    public Variation getVariationById(Long Id) {
        String sql = "SELECT * FROM variation  WHERE id = ?";
        List<Variation> list= genericDAO.query(sql, new VariationMapper(), Id);
        return (list.isEmpty() ? null : list.get(0));
    }
}
