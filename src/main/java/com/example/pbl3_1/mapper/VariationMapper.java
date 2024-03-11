package com.example.pbl3_1.mapper;

import com.example.pbl3_1.entity.Variation;

import java.sql.ResultSet;

public class VariationMapper implements RowMapper<Variation> {
    @Override
    public Variation mapRow(ResultSet rs) {
        Variation variation = null;
        try {
            variation = Variation.builder()
                    .id(rs.getLong("id"))
                    .name(rs.getString("name"))
                    .build();
            return variation;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
