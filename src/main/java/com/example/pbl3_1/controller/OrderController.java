package com.example.pbl3_1.controller;

import com.example.pbl3_1.controller.dto.product.ProductForCheckOut;
import com.example.pbl3_1.controller.dto.product.ProductForShoppingCartDTO;
import com.example.pbl3_1.dao.AddressDAO;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.OrderService;
import com.example.pbl3_1.service.ShoppingCartItemService;
import com.example.pbl3_1.service.impl.AddressServiceImpl;
import com.example.pbl3_1.service.impl.orderServiceImpl;
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
    private final OrderService orderService = new orderServiceImpl();

    private final AddressService addressService = new AddressServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/check-out":
                showCheckOutPage(request, response);
                break;
            case "/order-detail":
                request.getRequestDispatcher("/WEB-INF/views/order/order-detail.jsp").forward(request, response);
                break;
            case "/order-history":
                request.getRequestDispatcher("/WEB-INF/views/order/order-history.jsp").forward(request, response);
                break;
        }
    }

    public void showCheckOutPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Map<String, String>> orderDetail = (List<Map<String, String>>) request.getSession().getAttribute("orderDetail");

        List<Long> shoppingCartItemId = new ArrayList<>();

        for (Map<String, String> order : orderDetail) {
            shoppingCartItemId.add(Long.parseLong(String.valueOf(order.get("shoppingCartItemId"))));
        }

        User user = (User) request.getSession().getAttribute("USERMODEL");
        List<ProductForCheckOut> productForCheckOuts = orderService.getProductByOrderList(shoppingCartItemId);
        Address address = addressService.getDefaultAddressByUserId(user.getId());

        if(address == null){
            response.sendRedirect("usersetting/address");
            return;
        }

        request.setAttribute("address", address);
        request.setAttribute("productForCheckOuts", productForCheckOuts);
        request.getRequestDispatcher("CheckOut.jsp").forward(request, response);
    }
}
