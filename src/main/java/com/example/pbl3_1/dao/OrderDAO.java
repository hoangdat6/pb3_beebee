package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Order;

import java.util.List;

public interface OrderDAO {
    public List<Order> getOrderListByID(int UserId);
    public List<Order> getAllOrderList();
}
