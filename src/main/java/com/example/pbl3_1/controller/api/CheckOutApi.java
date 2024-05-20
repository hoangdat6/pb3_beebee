package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@WebServlet(name = "checkOutApi", urlPatterns = {"/api/checkout"})
public class CheckOutApi extends HttpServlet {
    private final OrderService orderService = new OrderServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        ObjectMapper objectMapper = new ObjectMapper();

        List<Map<String, String>> orderDetail = objectMapper.readValue(request.getReader(), List.class);

        User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");

        System.out.println(orderDetail.get(0).get("phone"));
        Order addressOrder = Order.builder()
                .userId(user.getId())
                .fullName(orderDetail.get(0).get("fullname"))
                .phone(orderDetail.get(0).get("phone"))
                .total(Integer.parseInt(Objects.toString(orderDetail.get(0).get("total"))))
                .detailAddress(orderDetail.get(0).get("detail"))
                .communeAddress(orderDetail.get(0).get("ward"))
                .districtAddress(orderDetail.get(0).get("district"))
                .provinceAddress(orderDetail.get(0).get("province"))
                .build();

        List<OrderDetail> orderDetails = new ArrayList<>();

        for (int i = 1; i < orderDetail.get(1).size(); ++i) {
            OrderDetail orderDetail1 = OrderDetail.builder()
                    .sellerId(Long.parseLong(orderDetail.get(1).get("sellerId")))
                    .productItemId(Long.parseLong(orderDetail.get(1).get("productItemId")))
                    .quantity(Integer.parseInt(orderDetail.get(1).get("quantity")))
                    .total(Integer.parseInt(orderDetail.get(1).get("price")))
                    .build();
            orderDetails.add(orderDetail1);
        }
        Long id = orderService.addOrder(addressOrder, orderDetails);

        System.out.println(id);
    }
}
