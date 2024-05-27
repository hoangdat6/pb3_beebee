package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.cart.ProductItemInfoForCartDTO;
import com.example.pbl3_1.controller.dto.checkout.ProductForCheckOut;
import com.example.pbl3_1.entity.Order;

import java.util.List;

public interface OrderDAO {
    List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId);

    Long addOrder(Order addressOrder);

    List<ProductItemInfoForCartDTO> getCartInfoByUserId(List<Long> shoppingCartItemId);
}
