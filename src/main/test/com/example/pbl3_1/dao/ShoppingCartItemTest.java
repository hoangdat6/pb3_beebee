package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.cart.CartInfoDTO;
import com.example.pbl3_1.controller.dto.cart.ProductItemInfoForCartDTO;
import com.example.pbl3_1.dao.impl.ShoppingCartItemDAOImpl;
import com.example.pbl3_1.service.CartItemService;
import com.example.pbl3_1.service.ShoppingCartItemService;
import com.example.pbl3_1.service.impl.CartItemServiceImpl;
import com.example.pbl3_1.service.impl.ShoppingCartItemServiceImpl;
import org.junit.Test;

import java.util.List;

public class ShoppingCartItemTest {
    @Test
    public void saveToCart(){
        CartItemService cartItemService = new CartItemServiceImpl();

//        System.out.println(cartItemService.saveToCart("2", null, 10, 3L));
    }

    @Test
    public void getCartInfoByUserId() {
        ShoppingCartItemService shoppingCartItemService = new ShoppingCartItemServiceImpl() {
        };
//        System.out.println(cartItemService.getCartInfoByUserId(3L));

        List<CartInfoDTO> productItemInfoForCartDTOS = shoppingCartItemService.getCartsInfoByUserId(3L);

        for (CartInfoDTO productItemInfoForCartDTO : productItemInfoForCartDTOS) {
            System.out.println(productItemInfoForCartDTO);
        }
    }
}
