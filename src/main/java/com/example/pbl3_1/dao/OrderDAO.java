package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.ProductSale;
import com.example.pbl3_1.controller.dto.cart.ProductItemInfoForCartDTO;
import com.example.pbl3_1.controller.dto.checkout.ProductForCheckOut;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface OrderDAO {
    List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId);

    Long addOrder(Order addressOrder);

    List<ProductItemInfoForCartDTO> getCartInfoByUserId(List<Long> shoppingCartItemId);

    Integer getQuantityInStock(Long productItemId);

    void createOrder(Order order, List<OrderDetail> orderDetails) throws SQLException;

    void createOrders(List<Order> orders, List<List<OrderDetail>> lists) throws SQLException;

    List<ProductSale> getSaleByOrderId(String orderId);
}
