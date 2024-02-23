package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.UserService;
import com.example.pbl3_1.service.UserServiceImpl;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "home", urlPatterns = {"/home", "/login, /register"})
public class HomeController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = request.getParameter("action");
        if(action == null){

            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
//            String alert = request.getParameter("alert");
//            String message = request.getParameter("message");
//            if (message != null && alert != null) {
//                request.setAttribute("message", "Tài khoản hoặc mật khẩu không đúng");
//                request.setAttribute("alert", alert);
//            }
            switch (action){
                case "login":
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                    break;
                case "logout":
//                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    break;
                case "register":
                    request.getRequestDispatcher("Sign_up.jsp").forward(request, response);
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
            User user = userService.findByUsernameAndPassword(username, password);
            if(user != null){
                SessionUtil sessionUtil = SessionUtil.getInstance();
                sessionUtil.putValue(request, "USERMODEL", user);
                response.sendRedirect(request.getContextPath() + "/home");
            } else {
                response.sendRedirect(request.getContextPath() + "/login?action=login&message=username_password_invalid&alert=danger");
            }
        }else if (action != null && action.equals("register")){

        }
    }
}
