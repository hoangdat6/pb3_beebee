package com.example.pbl3_1.dao;

public interface ShoppingCartDAO {
    Long getCartIdByUserId(Long id);
    Long createCart(Long userId);
}
