package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.ShoppingCartItem;

import java.util.List;

public interface ShoppingCartItemDAO extends CommonDAO<ShoppingCartItem>{
    ShoppingCartItem findById(Long id);
    ShoppingCartItem findByCartIAndProductItemId(Long cartId, Long productItemId);
    List<ShoppingCartItem> findByIdCart(Long Id);
}
