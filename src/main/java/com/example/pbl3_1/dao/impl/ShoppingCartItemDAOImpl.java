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

    }

    @Override
    public void deleteById(Long object) {

    }

    @Override
    public ShoppingCartItem findById(int id) {
        return null;
    }

}
