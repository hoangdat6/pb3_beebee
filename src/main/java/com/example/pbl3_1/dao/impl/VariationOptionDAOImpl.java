package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.product.VariationDTO;
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

    @Override
    public VariationOption getVariationOptionById(Long id) {
        String sql = "SELECT * FROM variation_option WHERE id = ?";
        List<VariationOption> list=genericDAO.query(sql, new VariationOptionMapper(), id);
        return (list.isEmpty() ? null : list.get(0));
    }

    @Override
    public Long addVariationOption(VariationOption variationOption) {
        String sql = "INSERT INTO variation_option(variation_id, value) VALUES(?, ?)";
        return genericDAO.save(sql, variationOption.getVariationId(), variationOption.getValue());
    }

    @Override
    public Long checkVariationOptionExist(VariationOption variationOption) {
        String sql = "SELECT id FROM variation_option WHERE variation_id = ? AND value = ?";
        List<Long> list = genericDAO.query(sql, resultSet -> {
                    try {
                        return resultSet.getLong("id");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    return null;
                }
            , variationOption.getVariationId(), variationOption.getValue());
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public List<VariationDTO> getVariationDTOByProductItemId(Long id) {
        StringBuilder sql = new StringBuilder("select vo.id, v.name as variation_name, vo.value\n" +
                "from variation_option as vo\n" +
                "left join variation as v on vo.variation_id = v.id\n" +
                "where vo.id in (\n" +
                "    select variation1 from product_item where id = ?\n" +
                "    union all\n" +
                "    select variation2 from product_item where id = ?\n" +
                ")");
        return genericDAO.query(sql.toString(), resultSet -> {
            try {
                return new VariationDTO(resultSet.getLong("id"),
                        resultSet.getString("variation_name"),
                        resultSet.getString("value"));
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }, id, id);
    }
}

