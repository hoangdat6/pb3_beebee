package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.ShoppingCartDAO;
import com.example.pbl3_1.entity.ShoppingCart;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

public class ShoppingCartDAOImpl implements ShoppingCartDAO {
    GenericDAO<ShoppingCart> genericDAO = new AbstractDAOImpl<>();
    @Override
    public Long getCartIdByUserId(Long id) {
        String sql = "SELECT id FROM shopping_cart WHERE user_id = ?";
        List<Long> userId = genericDAO.query(sql, resultSet -> {
            try {
                return resultSet.getLong("id");
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return null;
        }, id);
        return userId.isEmpty() ? null : userId.get(0);
    }

    @Override
    public Long createCart(Long userId) {
        String sql = "INSERT INTO shopping_cart (user_id, created_at) VALUES (?, ?)";
        return genericDAO.save(sql, userId, new Timestamp(System.currentTimeMillis()));
    }
}
