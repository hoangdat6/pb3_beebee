package com.example.pbl3_1.controller;

import com.example.pbl3_1.controller.dto.product.ProductForShoppingCartDTO;
import com.example.pbl3_1.service.ShoppingCartItemService;
import com.example.pbl3_1.service.impl.ShoppingCartItemServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "orderController", urlPatterns = {"/check-out", "/order-detail", "/order-history"})
public class OrderController extends HttpServlet {
    private final ShoppingCartItemService shoppingCartItemService = new ShoppingCartItemServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        switch (path) {
            case "/check-out":
                req.getRequestDispatcher("CheckOut.jsp").forward(req, resp);
                break;
            case "/order-detail":
                req.getRequestDispatcher("/WEB-INF/views/order/order-detail.jsp").forward(req, resp);
                break;
            case "/order-history":
                req.getRequestDispatcher("/WEB-INF/views/order/order-history.jsp").forward(req, resp);
                break;
        }
    }

    public void showCheckOutPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Map<String, String>> orderDetail = (List<Map<String, String>>) req.getSession().getAttribute("orderDetail");

        List<Long> shoppingCartItemId = new ArrayList<>();

        for (Map<String, String> order : orderDetail) {
            shoppingCartItemId.add(Long.parseLong(order.get("shoppingCartItemId")));
        }

//        List<ProductForShoppingCartDTO> productForShoppingCartDTOS = ShoppingCartItemService.getProductByOrderList(shoppingCartItemId);


    }
}
