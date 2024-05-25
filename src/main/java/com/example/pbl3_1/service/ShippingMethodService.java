package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.ShippingMethod;

import java.util.List;

public interface ShippingMethodService {
    List<ShippingMethod> getAllShippingMethods();

    ShippingMethod getShippingMethodById(Short id);
}
