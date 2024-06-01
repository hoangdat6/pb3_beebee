package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.PaymentMethodDAO;
import com.example.pbl3_1.entity.PaymentMethod;
import com.example.pbl3_1.entity.myEnum.EPaymentMethod;

import java.util.List;

public class PaymentMethodDAOImpl implements PaymentMethodDAO {
    private final GenericDAO<PaymentMethod> genericDAO = new AbstractDAOImpl<>();
    @Override
    public List<PaymentMethod> getPaymentMethods() {
        String sql = "SELECT * FROM payment_method";
        return genericDAO.query(sql, resultSet ->
                new PaymentMethod(EPaymentMethod.valueOf(resultSet.getShort("id")),
                        resultSet.getString("name")
                ));
    }

    @Override
    public PaymentMethod getPaymentMethodById(Short paymentMethodId) {
        String sql = "SELECT * FROM payment_method where id = ?";
        return genericDAO.query(sql, resultSet ->
                new PaymentMethod(EPaymentMethod.valueOf(resultSet.getShort("id")),
                        resultSet.getString("name")
                ), paymentMethodId).get(0);
    }
}
