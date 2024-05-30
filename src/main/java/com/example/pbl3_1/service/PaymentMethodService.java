package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.PaymentMethod;

import java.util.List;

public interface PaymentMethodService{
    List<PaymentMethod> getPaymentMethods();

    PaymentMethod getPaymentMethodById(Short paymentMethodId);
}
