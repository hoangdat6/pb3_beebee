package com.example.pbl3_1.dao;

import com.example.pbl3_1.service.CartItemService;
import com.example.pbl3_1.service.CartItemServiceImpl;
import org.junit.Test;

public class ShoppingCartItemTest {
    @Test
    public void saveToCart(){
        CartItemService cartItemService = new CartItemServiceImpl();

        System.out.println(cartItemService.saveToCart("2", null, 10, 3L));
    }
}
