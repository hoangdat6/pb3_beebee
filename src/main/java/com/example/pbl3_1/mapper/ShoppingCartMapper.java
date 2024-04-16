package com.example.pbl3_1.mapper;

import com.example.pbl3_1.entity.ShoppingCart;

import java.sql.ResultSet;

public class ShoppingCartMapper implements RowMapper<ShoppingCart> {
    @Override
    public ShoppingCart mapRow(ResultSet rs) {
        ShoppingCart shoppingCart = null;
        try {
            shoppingCart = ShoppingCart.builder()
                    .id(rs.getLong("id"))
                    .userId(rs.getLong("user_id"))
                    .build();
            return shoppingCart;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
