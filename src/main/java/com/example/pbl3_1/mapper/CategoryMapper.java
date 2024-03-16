package com.example.pbl3_1.mapper;

import com.example.pbl3_1.entity.Category;

import java.sql.ResultSet;

public class CategoryMapper implements RowMapper<Category>{
    @Override
    public Category mapRow(ResultSet rs) {
        Category category = null;

        try {
            category = Category.builder()
                    .id(rs.getInt("id"))
                    .name(rs.getString("name"))
                    .imgPath(rs.getString("img_path"))
                    .build();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return category;
    }
}
