package com.example.pbl3_1.controller;

//import com.example.pbl3_1.Util.HttpUtil;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.ProductServiceImpl;
import com.example.pbl3_1.service.UserService;
import com.example.pbl3_1.service.UserServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "home", urlPatterns = {"/home", "/login", "/register", "/logout"})
public class HomeController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

//        String action = request.getParameter("action");
        String action2 = request.getRequestURI();
        System.out.println(action2);
        if(action2 == null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            SessionUtil sessionUtil = SessionUtil.getInstance();
            switch (action2) {
                case "/PBL3_1_war_exploded/login":
                    sessionUtil.removeValue(request, "USERMODEL");
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                    break;
                case "/PBL3_1_war_exploded/logout":
                    sessionUtil.removeValue(request, "USERMODEL");
                    response.sendRedirect("login?action=login&message=logout_success&alert=success");
                    break;
                case "register":
                    request.getRequestDispatcher("Sign_up.jsp").forward(request, response);
                default:
//                    ProductService productService = new ProductServiceImpl();
//                    request.setAttribute("products", productService.getProductsForHome());
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
            User user = userService.findByUsernameAndPassword(username, password);
            if(user != null){
                SessionUtil sessionUtil = SessionUtil.getInstance();
                sessionUtil.putValue(request, "USERMODEL", user);
                response.sendRedirect(request.getContextPath() + "/home");
            } else{
                response.sendRedirect(request.getContextPath() + "/login?action=login&message=username_password_invalid&alert=danger");
            }
        }else if (action != null && action.equals("register")){

        }
    }
}
