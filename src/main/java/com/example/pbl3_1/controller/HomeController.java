package com.example.pbl3_1.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "home", urlPatterns = {"/home", "/login"})
public class HomeController extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = request.getParameter("action");
        if(action == null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            switch (action){
                case "login":
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                    break;
                case "logout":
//                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    break;
                default:
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
            }
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action != null && action.equals("login")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");


        }
    }
}
