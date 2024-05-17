package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.OrderDAOImpl;
import com.example.pbl3_1.service.OrderService;
import com.example.pbl3_1.service.impl.OrderServiceImpl;
import org.junit.Test;

import java.util.List;

public class OrderDAOTest {
    @Test
    public void testGetProductByOrderList() {
        OrderDAO orderDAO = new OrderDAOImpl();
        System.out.println(orderDAO.getProductByOrderList(List.of(82L, 87L, 3L)));
    }

    @Test
    public void testGetProductByOrderList2() {
        OrderService orderDAO = new OrderServiceImpl();
        System.out.println(orderDAO.getProductByOrderList(List.of(82L, 87L, 3L)));
    }
}
