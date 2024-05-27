package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.product.ProductForCheckOut;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.dao.impl.OrderDAOImpl;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;
import com.example.pbl3_1.service.OrderService;

import java.util.List;

public class OrderServiceImpl implements OrderService {
    OrderDAO orderDAO = new OrderDAOImpl();

    @Override
    public List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId) {
        return null;
    }

    @Override
    public Long addOrder(Order addressOrder, List<OrderDetail> orderDetails) {
        return null;
    }
}
