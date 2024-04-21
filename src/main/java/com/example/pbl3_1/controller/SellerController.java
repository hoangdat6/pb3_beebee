package com.example.pbl3_1.controller;

import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.impl.SellerServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class SellerController extends HttpServlet {
    private final SellerService sellerService = new SellerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String path = request.getServletPath();

        switch (path) {
            case "/shop":
                String shopId = request.getParameter("id");
                showShop(request, response, shopId);
                break;
            case "/seller/save":
//                showCategoryForAddSeller(request, response);
                break;
        }
    }

    private void showShop(HttpServletRequest request, HttpServletResponse response, String shopId) {
        try {
            request.setAttribute("shop", sellerService.getShopById(Long.parseLong(shopId)));
            request.getRequestDispatcher("/shop.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
