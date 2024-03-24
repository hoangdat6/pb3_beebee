package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.dao.ProductItemDAO;
import com.example.pbl3_1.dao.impl.ProductItemDAOImpl;
import com.example.pbl3_1.entity.ProductItem;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "productDetailApi", urlPatterns = {"/api/product-detail"})
public class ProductDetailApi extends HttpServlet{
    ProductItemDAO productItemDAO = new ProductItemDAOImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String variantId1 = request.getParameter("variation1");
        String variantId2 = request.getParameter("variation2");

        ProductItem productItem = null;

        if(!variantId2.isEmpty()){
            productItem = productItemDAO.getProductItemByVariations(Long.parseLong(variantId1), Long.parseLong(variantId2));
        } else {
            productItem = productItemDAO.getProductItemByVariation(Long.parseLong(variantId1));
        }

        ObjectMapper objectMapper = new ObjectMapper();
        response.setContentType("application/json");
        String json = objectMapper.writeValueAsString(productItem);
        objectMapper.writeValue(response.getOutputStream(), json);
    }
}
