package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.PaymentMethodDAO;
import com.example.pbl3_1.dao.impl.PaymentMethodDAOImpl;
import com.example.pbl3_1.entity.PaymentMethod;
import com.example.pbl3_1.service.PaymentMethodService;

import java.util.List;

public class PaymentMethodServiceImpl implements PaymentMethodService {
    private final PaymentMethodDAO paymentMethodDAO = new PaymentMethodDAOImpl();
    @Override
    public List<PaymentMethod> getPaymentMethods() {
        return paymentMethodDAO.getPaymentMethods();
    }
}
