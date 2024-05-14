package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.entity.Order;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDAOImpl implements OrderDAO {
    public List<Order> getAllOrderList() {
        List<Order> orderList = new ArrayList<Order>();
        String query = "SELECT * FROM orders";
        return orderList;
    }

    private ResultSet getOrderResultSet(int UserID) throws SQLException {
        String query = "SELECT * FROM orders WHERE user_id = " + UserID;
        GenericDAO<Order> abstractDAO = new AbstractDAOImpl<>();
        return (ResultSet) abstractDAO.query(query, resultSet -> {
            return resultSet;
        });
    }

    public List<Order> getOrderListByID(int UserId){
        List<Order> orderList = new ArrayList<Order>();
        String query = "SELECT * FROM orders WHERE user_id = " + UserId;
        return orderList;
    }
}
