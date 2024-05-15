package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.service.CategoryService;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.UserService;
import com.example.pbl3_1.service.impl.CategoryServiceImpl;
import com.example.pbl3_1.service.impl.ProductServiceImpl;
import com.example.pbl3_1.service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "location", urlPatterns = {})
public class LocationController extends HttpServlet {
    private final UserService userService = new UserServiceImpl();
    private final ProductService productService = new ProductServiceImpl();
    private final CategoryService categoryService = new CategoryServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String path = request.getServletPath();

        switch (path) {
            case "/":
                break;
            case "//":
                break;
            case "///":
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/":
                break;
        }
    }
}
