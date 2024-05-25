package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.ShippingMethodDAO;
import com.example.pbl3_1.dao.impl.ShippingMethodDAOImpl;
import com.example.pbl3_1.entity.ShippingMethod;
import com.example.pbl3_1.service.ShippingMethodService;

import java.util.List;

public class ShippingMethodServiceImpl implements ShippingMethodService {
    private final ShippingMethodDAO shippingMethodDAO = new ShippingMethodDAOImpl();
    @Override
    public List<ShippingMethod> getAllShippingMethods() {
        return shippingMethodDAO.getAllShippingMethods();
    }

    @Override
    public ShippingMethod getShippingMethodById(Short id) {
        return shippingMethodDAO.getShippingMethodById(id);
    }
}
