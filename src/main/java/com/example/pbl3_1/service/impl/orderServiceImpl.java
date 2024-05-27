package com.example.pbl3_1.service.impl;

<<<<<<< HEAD
import com.example.pbl3_1.controller.dto.product.ProductForCheckOut;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.dao.impl.OrderDAOImpl;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;
=======
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.dao.impl.OrderDAOImpl;
import com.example.pbl3_1.entity.Order;
>>>>>>> ec6ebfdd9af63626937b38aeaaeca81a1f863f9c
import com.example.pbl3_1.service.OrderService;

import java.util.List;

public class orderServiceImpl implements OrderService {
    OrderDAO orderDAO = new OrderDAOImpl();
<<<<<<< HEAD

    @Override
    public List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId) {
=======
    @Override
    public List<Order> getAllOrderList() {
>>>>>>> ec6ebfdd9af63626937b38aeaaeca81a1f863f9c
        return null;
    }

    @Override
<<<<<<< HEAD
    public Long addOrder(Order addressOrder, List<OrderDetail> orderDetails) {
        return null;
=======
    public List<Order> getOrderListByID(int userID) {
        return orderDAO.getOrderListByID(userID);
>>>>>>> ec6ebfdd9af63626937b38aeaaeca81a1f863f9c
    }
}
