package com.example.pbl3_1.mapper;

import com.example.pbl3_1.entity.ShoppingCartItem;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ShoppingCartItemMapper implements RowMapper<ShoppingCartItem>{
@Override
    public ShoppingCartItem mapRow(ResultSet rs) {
        try {
            return new ShoppingCartItem(rs.getLong("id"),
                    rs.getLong("cart_id"),
                    rs.getLong("product_item_id"),
                    rs.getInt("qty"),
                    rs.getTimestamp("created_at"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
