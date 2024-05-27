package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.cart.CartInfoDTO;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.OrderService;
import com.example.pbl3_1.service.impl.OrderServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "orderApi", urlPatterns = {"/api/order"})
public class OrderApi extends HttpServlet {
    private final OrderService orderService = new OrderServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        List<Map<Object, Object>> orderDetail = objectMapper.readValue(request.getReader(), List.class);
        SessionUtil.getInstance().putValue(request, "orderDetail", orderDetail);

        objectMapper.writeValue(response.getOutputStream(), "{\"status\" : \"200\"}");
    }

}
