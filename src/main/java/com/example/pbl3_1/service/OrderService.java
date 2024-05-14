package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.Order;

import java.util.List;

public interface OrderService {
    List<Order> getAllOrderList();
    List<Order> getOrderListByID(int userID);
}
