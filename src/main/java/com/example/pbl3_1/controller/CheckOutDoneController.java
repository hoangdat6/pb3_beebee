package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.PaymentMethod;
import com.example.pbl3_1.service.PaymentMethodService;
import com.example.pbl3_1.service.impl.PaymentMethodServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "checkOutDone", urlPatterns = {"/check-out-done"})
public class CheckOutDoneController extends HttpServlet {
    private final PaymentMethodService paymentMethodService = new PaymentMethodServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer paymentTotal = (Integer) SessionUtil.getInstance().getValue(request, "paymentTotal");
        Short paymentMethodId = (Short) SessionUtil.getInstance().getValue(request, "paymentMethodId");

        PaymentMethod paymentMethod = paymentMethodService.getPaymentMethodById(paymentMethodId);

        request.setAttribute("paymentTotal", paymentTotal);
        request.setAttribute("paymentMethod", paymentMethod);

        request.getRequestDispatcher("CheckOutDone.jsp").forward(request, response);
    }
}
