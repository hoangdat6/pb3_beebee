package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.ShoppingCartItem;

public interface ShoppingCartItemDAO extends CommonDAO<ShoppingCartItem>{
    Long findByCartIAndProductItemId(Long cartId, Long productItemId);
}
