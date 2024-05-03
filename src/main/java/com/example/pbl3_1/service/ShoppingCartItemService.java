package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.product.ShopForCartDTO;
import com.example.pbl3_1.entity.ShoppingCartItem;

import java.util.List;

public interface ShoppingCartItemService {
    List<ShopForCartDTO> findByIdUser(Long id);
    public ShoppingCartItem findById(Long id);
    public Integer update(ShoppingCartItem shoppingCartItem);
    public void deleteById(Long object);
}