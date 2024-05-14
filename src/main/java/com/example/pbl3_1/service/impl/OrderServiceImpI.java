package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.dao.impl.OrderDAOImpl;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.service.OrderService;

import java.util.List;

public class OrderServiceImpI implements OrderService {
    OrderDAO orderDAO = new OrderDAOImpl();
    @Override
    public List<Order> getOrderListByID(int userID) {
        return orderDAO.getOrderListByID(userID);
    }
    @Override
    public List<Order> getAllOrderList() {
        return orderDAO.getAllOrderList();
    }
}
