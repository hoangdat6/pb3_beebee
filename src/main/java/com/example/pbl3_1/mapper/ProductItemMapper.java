package com.example.pbl3_1.mapper;

import com.example.pbl3_1.entity.ProductItem;

import java.sql.ResultSet;

public class ProductItemMapper implements RowMapper<ProductItem> {
    @Override
    public ProductItem mapRow(ResultSet rs) {
        ProductItem pi = null;
        try {
            pi = new ProductItem();
            pi.setId(rs.getLong("id"));
            pi.setVariation1(rs.getLong("variation1"));
            pi.setVariation2(rs.getLong("variation2"));
            pi.setQtyInStock(rs.getInt("qty_in_stock"));
            pi.setPrice(rs.getFloat("price"));
            pi.setProductImgPath(rs.getString("product_img_path"));
            pi.setProductId(rs.getLong("product_id"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pi;
    }
}
