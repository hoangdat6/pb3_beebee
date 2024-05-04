package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.user_login.CheckLoggedUser;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.ShoppingCartItemService;
import com.example.pbl3_1.service.impl.ShoppingCartItemServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "cart",urlPatterns = "/cart")
public class CartController extends HttpServlet {
    public final ShoppingCartItemService shoppingCartItemService= new ShoppingCartItemServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        if(CheckLoggedUser.checkLoggedUser(request, response, "/cart")) {
            User userLogin = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
            request.setAttribute("shoppingcarts", shoppingCartItemService.findByIdUser(userLogin.getId()));
            request.getRequestDispatcher("Cart.jsp").forward(request, response);
        }
    }
}