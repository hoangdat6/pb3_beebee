package com.example.pbl3_1.controller;

import com.example.pbl3_1.service.OrderService;
import com.example.pbl3_1.service.impl.OrderServiceImpI;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;

@WebServlet(name = "usersetting", urlPatterns = {"/usersetting/order"})
public class UserController extends HttpServlet {
    OrderService orderService = new OrderServiceImpI();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String path = request.getServletPath();
        switch (path) {
            case "/usersetting/order":
                request.setAttribute("order", "order");
                request.getRequestDispatcher("Order.jsp").forward(request, response);
                orderService.getOrderListByID(1);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
