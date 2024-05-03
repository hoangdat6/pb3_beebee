package com.example.pbl3_1.mapper;

import com.example.pbl3_1.dao.CategoryDAO;
import com.example.pbl3_1.dao.impl.CategoryDAOImpl;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;

import java.sql.ResultSet;

public class ProductMapper implements RowMapper<Product>{
    private CategoryDAO categoryDAO;
    @Override
    public Product mapRow(ResultSet rs) {
        Product product = null;

        try {
            categoryDAO = new CategoryDAOImpl();
            product = Product.builder()
                    .id(rs.getLong("id"))
                    .name(rs.getString("name"))
                    .description(rs.getString("description"))
                    .productImgPath(rs.getString("product_img_path"))
                    .categoryId(rs.getInt("category_id"))
                    .discount(rs.getFloat("discount"))
                    .sellerId(rs.getLong("seller_id"))
                    .createdAt(rs.getTimestamp("created_at"))
                    .views(rs.getLong("views"))
                    .build();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return product;
    }
}
