package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.impl.ProductServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeAPI", urlPatterns = {"/api/for-you", "/api/top"})
public class HomeAPI extends HttpServlet {
    private final ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String path = request.getServletPath();
        switch (path) {
            case "/api/for-you":
                getForYou(request, response);
                break;
            case "/api/top":
                getTop(request, response);
                break;
        }
    }

    private void getTop(HttpServletRequest request, HttpServletResponse response) {
        Integer page = Integer.parseInt(request.getParameter("page"));
        // Get data from database
        List<ProductPreviewDTO> productPreviewDTOs = productService.getTopProductsForHome(page, 12);

        // Send data to client
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            objectMapper.writeValue(response.getOutputStream(), productPreviewDTOs);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void getForYou(HttpServletRequest request, HttpServletResponse response) {
        Integer page = Integer.parseInt(request.getParameter("page"));
        // Get data from database
        List<ProductPreviewDTO> productPreviewDTOs = productService.getProductsForHome(page, 12);

        // Send data to client
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            objectMapper.writeValue(response.getOutputStream(), productPreviewDTOs);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
