package com.example.pbl3_1.service;

<<<<<<< HEAD
import com.example.pbl3_1.controller.dto.product.ProductForCheckOut;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;

import java.util.List;

public interface OrderService {
    List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId);

    Long addOrder(Order addressOrder, List<OrderDetail> orderDetails);
=======
public interface OrderService {
    
>>>>>>> 62640c1 (Addd Order UI, modify Address)
}
