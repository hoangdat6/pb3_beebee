package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.cart.CartInfoDTO;
import com.example.pbl3_1.controller.dto.cart.ProductForCartDTO;
import com.example.pbl3_1.controller.dto.cart.SmallCartItem;
import com.example.pbl3_1.controller.dto.product.ShopForCartDTO;
import com.example.pbl3_1.entity.ShoppingCartItem;

import java.util.List;

public interface ShoppingCartItemService {
    List<ShopForCartDTO> findByIdUser(Long id);
    public ShoppingCartItem findById(Long id);
    public Object update(ShoppingCartItem shoppingCartItem);
    public void deleteById(Long object);
    List<CartInfoDTO> getCartsInfoByUserId(Long userId);

    List<SmallCartItem> getAllCartItemsByUserId(Long userId);

    Object findByUserId(Long id);
}