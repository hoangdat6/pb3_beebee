package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.ShoppingCartItemDAO;
import com.example.pbl3_1.entity.ShoppingCartItem;
import com.example.pbl3_1.mapper.ShoppingCartItemMapper;

import java.sql.SQLException;
import java.util.List;

public class ShoppingCartItemDAOImpl implements ShoppingCartItemDAO {
    GenericDAO<ShoppingCartItem> genericDAO = new AbstractDAOImpl<>();
    @Override
    public Long save(ShoppingCartItem object) {
        String sql = "INSERT INTO shop_bee.shopping_cart_item (cart_id, product_item_id, quantity, created_at) VALUES (?, ?, ?, ?)";
        return genericDAO.save(sql,
                object.getCartId(),
                object.getProductItemId(),
                object.getQuantity(),
                object.getCreatedAt());
    }

    @Override
    public Integer update(ShoppingCartItem object) {
        String sql = "UPDATE shop_bee.shopping_cart_item SET cart_id = ?, product_item_id = ?, qty = ?, created_at = ? WHERE id = ?";
        return genericDAO.update(sql,
                object.getCartId(),
                object.getProductItemId(),
                object.getQuantity(),
                object.getCreatedAt(),
                object.getId());
    }

    @Override
    public void deleteById(Long object) {

    }

    @Override
    public ShoppingCartItem findById(int id) {
        return null;
    }

    @Override
    public ShoppingCartItem findById(Long id) {
        String sql = "SELECT * FROM shopping_cart_item WHERE id = ? ";
        List<ShoppingCartItem> list= genericDAO.query(sql,new ShoppingCartItemMapper(),id);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public ShoppingCartItem findByCartIAndProductItemId(Long cartId, Long productItemId) {
        String sql = "SELECT id, quantity FROM shop_bee.shopping_cart_item WHERE cart_id = ? AND product_item_id = ?";
        List<ShoppingCartItem> cartItems = genericDAO.query(sql, resultSet -> {
            try {
                return  ShoppingCartItem.builder().
                        id(resultSet.getLong("id")).
                        quantity(resultSet.getInt("quantity")).
                        build();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, cartId, productItemId);
        return cartItems.isEmpty() ? null : cartItems.get(0);
    }

    @Override
    public List<ShoppingCartItem> findByIdCart(Long Id) {
        String sql = "SELECT * FROM shopping_cart_item WHERE cart_id =? ";
        return genericDAO.query(sql,new ShoppingCartItemMapper(),Id);
    }
}
