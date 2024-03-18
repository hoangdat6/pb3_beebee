package com.example.pbl3_1.mapper;

import com.example.pbl3_1.entity.VariationOption;

import java.sql.ResultSet;

public class VariationOptionMapper implements RowMapper<VariationOption> {

    @Override
    public VariationOption mapRow(ResultSet rs) {
        VariationOption variationOption = null;
        try {
            variationOption = VariationOption.builder()
                    .id(rs.getLong("id"))
                    .variationId(rs.getLong("variation_id"))
                    .value(rs.getString("value"))
                    .build();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return variationOption;
    }
}
