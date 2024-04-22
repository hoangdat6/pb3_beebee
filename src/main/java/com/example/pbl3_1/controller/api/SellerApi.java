package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.impl.SellerServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SellerApi", urlPatterns ={"/api/seller/ctime", "/api/seller/pop", "/api/seller/save"} )
public class SellerApi extends HttpServlet {
    private final SellerService sellerService = new SellerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String path = request.getServletPath();

        switch (path) {
            case "/api/seller/ctime":
                getProductByTime(request, response);
                break;
            case "/api/seller/pop":
                getProductByPop(request, response);
                break;
            case "/api/seller/save":
                break;
        }
    }

    private void getProductByTime(HttpServletRequest request, HttpServletResponse response) {
        Long id = Long.parseLong(request.getParameter("sellerId"));
        String priceSortBy = request.getParameter("sortBy");
        System.out.println(priceSortBy);
        List<ProductPreviewDTO> productCtime = sellerService.getShopByTimeDESC(id, 0, 15, priceSortBy);

        ObjectMapper objectMapper = new ObjectMapper();
        try {
            objectMapper.writeValue(response.getOutputStream(), productCtime);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void getProductByPop(HttpServletRequest request, HttpServletResponse response) {
        Long id = Long.parseLong(request.getParameter("sellerId"));
        String priceSortBy = request.getParameter("sortBy");

        List<ProductPreviewDTO> productPop = sellerService.getShopByPopDESC(id, 0, 15, priceSortBy);
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            objectMapper.writeValue(response.getOutputStream(), productPop);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request, response);
    }
}
