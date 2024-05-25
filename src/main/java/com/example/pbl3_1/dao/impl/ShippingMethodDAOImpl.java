package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.ShippingMethodDAO;
import com.example.pbl3_1.entity.ShippingMethod;

import java.util.List;

public class ShippingMethodDAOImpl implements ShippingMethodDAO {
    private final GenericDAO<ShippingMethod> genericDAO = new AbstractDAOImpl();
    @Override
    public List<ShippingMethod> getAllShippingMethods() {
        String sql = "SELECT * FROM shipping_method";

        return genericDAO.query(sql, resultSet -> {
            ShippingMethod shippingMethod = new ShippingMethod();
            shippingMethod.setId(resultSet.getShort("id"));
            shippingMethod.setName(resultSet.getString("name"));
            shippingMethod.setDescription(resultSet.getString("description"));
            shippingMethod.setFee(resultSet.getInt("fee"));
            return shippingMethod;
        });
    }

    @Override
    public ShippingMethod getShippingMethodById(Short id) {
        String sql = "SELECT * FROM shipping_method WHERE id = ?";
        return genericDAO.query(sql, resultSet -> {
            ShippingMethod shippingMethod = new ShippingMethod();
            shippingMethod.setId(resultSet.getShort("id"));
            shippingMethod.setName(resultSet.getString("name"));
            shippingMethod.setDescription(resultSet.getString("description"));
            shippingMethod.setFee(resultSet.getInt("fee"));
            return shippingMethod;
        }, id).get(0);
    }
}
