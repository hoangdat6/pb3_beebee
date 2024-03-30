package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.ShoppingCartItemDAO;
import com.example.pbl3_1.entity.ShoppingCartItem;

public class ShoppingCartItemDAOImpl implements ShoppingCartItemDAO {
    GenericDAO<ShoppingCartItem> genericDAO = new AbstractDAOImpl<>();
    @Override
    public Long save(ShoppingCartItem object) {
        String sql = "INSERT INTO shop_bee.shopping_cart_item (cart_id, product_item_id, qty, created_at) VALUES (?, ?, ?, ?)";
        return genericDAO.save(sql,
                object.getCartId(),
                object.getProductItemId(),
                object.getQuantity(),
                object.getCreatedAt());
    }

    @Override
    public void update(ShoppingCartItem object) {
        String sql = "UPDATE shop_bee.shopping_cart_item SET cart_id = ?, product_item_id = ?, qty = ?, created_at = ? WHERE id = ?";
        genericDAO.update(sql,
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
    public Long findByCartIAndProductItemId(Long cartId, Long productItemId) {
        String sql = "SELECT * FROM shop_bee.shopping_cart_item WHERE cart_id = ? AND product_item_id = ?";
        return genericDAO.count(sql, cartId, productItemId);
    }
}
