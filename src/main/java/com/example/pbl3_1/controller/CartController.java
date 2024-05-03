package com.example.pbl3_1.controller;

import com.example.pbl3_1.entity.ShoppingCartItem;
import com.example.pbl3_1.service.ShoppingCartItemService;
import com.example.pbl3_1.service.ShoppingCartItemServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "cart",urlPatterns = "/cart")
public class CartController extends HttpServlet {
    public final ShoppingCartItemService shoppingCartItemService= new ShoppingCartItemServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        Long id = Long.parseLong(request.getParameter("id"));
        request.setAttribute("shoppingcarts", shoppingCartItemService.findByIdUser(id));
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
    }
}
