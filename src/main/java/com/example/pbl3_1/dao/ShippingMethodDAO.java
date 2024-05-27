package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.ShippingMethod;

import java.util.List;

public interface ShippingMethodDAO {
    List<ShippingMethod> getAllShippingMethods();

    ShippingMethod getShippingMethodById(Short id);
}
