package com.example.pbl3_1.controller;

//import com.example.pbl3_1.Util.HttpUtil;
import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.dao.impl.UserDAOimpl;
import com.example.pbl3_1.entity.Egender;
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
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;

@WebServlet(name = "home", urlPatterns = {"/home", "/login", "/register", "/logout"})
public class HomeController extends HttpServlet {
    UserService     userService = new UserServiceImpl();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String action2 = request.getServletPath();
        System.out.println(action2);
        if(action2 == null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            SessionUtil sessionUtil = SessionUtil.getInstance();
            switch (action2) {
                case "/login":
                    sessionUtil.removeValue(request, "USERMODEL");
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                    break;
                case "/logout":
                    sessionUtil.removeValue(request, "USERMODEL");
                    response.sendRedirect("login?action=login&message=logout_success&alert=success");
                    break;
                case "/register":
                    request.getRequestDispatcher("Sign_Up.jsp").forward(request, response);
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
//        String action = request.getParameter("action");
        String action = request.getServletPath();
        if(action != null && action.equals("/login")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            SessionUtil sessionUtil = SessionUtil.getInstance();
            sessionUtil.putValue(request, "username", username);
            sessionUtil.putValue(request, "password", password);
            password = PasswordEncryption.ToSHA1(password, username);
            User user = userService.findByUsernameAndPassword(username, password);
            if(user != null){
                sessionUtil.removeValue(request, "username");
                sessionUtil.removeValue(request, "password");
                sessionUtil.putValue(request, "USERMODEL", user);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else {
                response.sendRedirect(request.getContextPath() + "/login?action=login&message=username_password_invalid&alert=danger");
            }
        }else if (action != null && action.equals("/register")){
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");
            Egender gender = Egender.fromString(request.getParameter("gender"));
            Date dob = Date.valueOf(request.getParameter("dob"));
            Timestamp createdAt = new Timestamp (System.currentTimeMillis());
            User user = userService.findByUsernameOrEmailOrPhone(username, email, phone);
            SessionUtil sessionUtil = SessionUtil.getInstance();
            User newUser = new User();
            newUser.SetAttribute(username, password, email, phone, gender, dob, createdAt);
            sessionUtil.putValue(request, "newUser", newUser);
            sessionUtil.putValue(request, "confirmPassword", confirmPassword);
            if(user == null)
            {
                if(password.equals(confirmPassword))
                {
                    newUser.setPassword(PasswordEncryption.ToSHA1(newUser.getPassword(), username));
                    userService.save(newUser);
                    sessionUtil.removeValue(request, "newUser");
                    sessionUtil.removeValue(request, "confirmPassword");
                    response.sendRedirect(request.getContextPath() + "/login");
                }else
                {
                    response.sendRedirect(request.getContextPath() + "/register");
                }
            }else
            {
                response.sendRedirect(request.getContextPath() + "/register");
            }
        }
    }
}
