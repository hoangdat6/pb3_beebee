package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.cart.ProductForCheckOut;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;

import java.util.List;

public interface OrderService {
    List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId);

    Long addOrder(Order addressOrder, List<OrderDetail> orderDetails);
}
