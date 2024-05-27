package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.cart.CartInfoDTO;
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

        ObjectMapper mapper = new ObjectMapper();

        Map<String, Object> dataOrder = mapper.readValue(request.getReader(), Map.class);

        Long addressId = dataOrder.get("addressId") != null ? Long.parseLong(dataOrder.get("addressId").toString()) : null;
        Short paymentMethodId = dataOrder.get("paymentMethodId") != null ? Short.parseShort(dataOrder.get("paymentMethodId").toString()) : null;
        Short shippingMethodId = SessionUtil.getInstance().getValue(
                request, "shippingMethodId") != null
                ? Short.parseShort(SessionUtil.getInstance().getValue(request, "shippingMethodId").toString())
                : null;

        List<CartInfoDTO> checkOutInfoDTOs = (List<CartInfoDTO>) SessionUtil.getInstance().getValue(request, "checkOutInfoDTOs");

        User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        orderService.createOrder(checkOutInfoDTOs, addressId, shippingMethodId, paymentMethodId, user.getId());
    }
}
