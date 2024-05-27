package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.cart.CartInfoDTO;
import com.example.pbl3_1.controller.dto.checkout.CheckOutInfoDTO;
import com.example.pbl3_1.controller.dto.checkout.ProductForCheckOut;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;

import java.util.List;
import java.util.Map;

public interface OrderService {
    List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId);

    Long addOrder(Order addressOrder, List<OrderDetail> orderDetails);

    List<CartInfoDTO> getCartInfoDTO(List<Long> shoppingCartItemId);
}
