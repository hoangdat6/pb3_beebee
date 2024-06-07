package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.entity.ProductItem;
import com.example.pbl3_1.service.ProductItemService;
import com.example.pbl3_1.service.impl.ProductItemServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "productDetailApi", urlPatterns = {"/api/product-detail"})
public class ProductDetailApi extends HttpServlet{
    private final ProductItemService productItemService = new ProductItemServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String variantId1 = request.getParameter("variation1");
        String variantId2 = request.getParameter("variation2");
        String productId = request.getParameter("productId");

        System.out.println(variantId2);

        ProductItem productItem = productItemService.getProductItemByVariations(productId, variantId1, variantId2);

        ObjectMapper objectMapper = new ObjectMapper();
        response.setContentType("application/json");
        String json = objectMapper.writeValueAsString(productItem);
        objectMapper.writeValue(response.getOutputStream(), json);
    }
}
