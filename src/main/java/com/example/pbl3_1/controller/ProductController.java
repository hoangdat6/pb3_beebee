package com.example.pbl3_1.controller;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.ProductServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
@WebServlet(name = "product", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {
    public final ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String path = request.getServletPath();

        switch (path) {
            case "/product":
                showProductDetails(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    public void showProductDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));

        ProductDetailDTO productDetailDTO = productService.getProductDetail(id);
        request.setAttribute("productDetail", productDetailDTO);

        request.getRequestDispatcher("Product_Details.jsp").forward(request, response);
    }
}
