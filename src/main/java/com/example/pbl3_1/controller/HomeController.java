package com.example.pbl3_1.controller;

//import com.example.pbl3_1.Util.HttpUtil;
import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.SendMail;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.dao.impl.UserDAOimpl;
import com.example.pbl3_1.entity.Egender;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.*;
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
import java.util.AbstractMap;
import java.util.Random;

@WebServlet(name = "home", urlPatterns = {"/home", "/login", "/register", "/userinfor", "/confirmcode", "/logout"})
public class HomeController extends HttpServlet {

    private final UserService userService = new UserServiceImpl();
    private final ProductService productService = new ProductServiceImpl();
    private final CategoryService categoryService = new CategoryServiceImpl();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String action2 = request.getServletPath();
        System.out.println(action2 + "1");
        if(action2 == null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            SessionUtil sessionUtil = SessionUtil.getInstance();
            switch (action2) {
                case "/login":
                    sessionUtil.removeValue(request, "USERMODEL");
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                    break;
                case "/userinfor":
                    response.sendRedirect(request.getContextPath() + "/UserInformation.jsp");
                    break;
                case "/register":
                    request.getRequestDispatcher("Sign_Up.jsp").forward(request, response);
                    break;
                case "/confirmcode":
                    request.getRequestDispatcher("Confirmcode.jsp").forward(request, response);
                    break;
                case "/logout":
                    sessionUtil.removeValue(request, "USERMODEL");
                    response.sendRedirect(request.getContextPath() + "/home");
                    break;
                default:
                    showHome(request, response);
                    break;
            }
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        if(action != null && action.equals("/login")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            SessionUtil sessionUtil = SessionUtil.getInstance();
            sessionUtil.putValue(request, "username", username);
            sessionUtil.putValue(request, "password", password);
            String tmp = userService.findUsernameByEmail(username);
            if(tmp == null) tmp = username;
            password = PasswordEncryption.ToSHA1(password, tmp);
            User user = userService.findByUsernameAndPassword(username, password);
            sessionUtil.putValue(request, "status", true);
            if(user != null){
                sessionUtil.removeValue(request, "status");
                sessionUtil.removeValue(request, "username");
                sessionUtil.removeValue(request, "password");
                sessionUtil.putValue(request, "USERMODEL", user);
                response.sendRedirect(request.getContextPath() + "/home");
            } else {
                sessionUtil.putValue(request, "status", false);
                response.sendRedirect(request.getContextPath() + "/login?action=login&message=username_password_invalid&alert=danger");
            }
        }else if (action != null && action.equals("/register")){
            String username = request.getParameter("username");
            String email = request.getParameter("email");
//            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");
            Egender gender = Egender.fromString(request.getParameter("gender"));
            Date dob = Date.valueOf(request.getParameter("dob"));
            Timestamp createdAt = new Timestamp (System.currentTimeMillis());
            AbstractMap.SimpleEntry<Boolean, Boolean> check = userService.findByUsernameOrEmail(username, email);
            SessionUtil sessionUtil = SessionUtil.getInstance();
            User newUser = new User();
            newUser.SetAttribute(username, password, email, gender, dob, createdAt);
            sessionUtil.putValue(request, "newUser", newUser);
            sessionUtil.putValue(request, "confirmPassword", confirmPassword);
            sessionUtil.putValue(request, "userStatus", true);
            sessionUtil.putValue(request, "emailStatus", true);
            sessionUtil.putValue(request, "cpStatus", true);
            System.out.println(check.getKey());
            System.out.println(check.getValue());
            if(check.getKey() && check.getValue())
            {
                if(password.equals(confirmPassword))
                {
                    newUser.setPassword(PasswordEncryption.ToSHA1(newUser.getPassword(), username));
                    String code = "";
                    for(int i = 0; i < 6; i++)
                    {
                        Random rand = new Random();
                        int randomNumber = Math.abs((rand.nextInt())%10);
                        System.out.println(randomNumber);
                        code += randomNumber;
                    }
                    sessionUtil.removeValue(request, "newUser");
                    sessionUtil.putValue(request, "newUser", newUser);
                    sessionUtil.removeValue(request, "confirmPassword");
                    sessionUtil.putValue(request, "code", code);
                    sessionUtil.removeValue(request, "userStatus");
                    sessionUtil.removeValue(request, "emailStatus");
                    sessionUtil.removeValue(request, "cpStatus");
                    SendMail.Send(email, code);
                    response.sendRedirect(request.getContextPath() + "/confirmcode");
                }else
                {
                    sessionUtil.putValue(request, "cpStatus", false);
                    response.sendRedirect(request.getContextPath() + "/register");
                }
            }else
            {
                sessionUtil.putValue(request, "userStatus", check.getKey());
                sessionUtil.putValue(request, "emailStatus", check.getValue());
                response.sendRedirect(request.getContextPath() + "/register");
            }
        }else if(action != null && action.equals("/confirmcode"))
        {
            String confirmcode = request.getParameter("confirmcode");
            SessionUtil sessionUtil = SessionUtil.getInstance();
            String code = (String)sessionUtil.getValue(request, "code");
            System.out.println(confirmcode + "    " + code);
            if(confirmcode.equals(code))
            {
                User user = (User)sessionUtil.getValue(request, "newUser");
                userService.save(user);
                sessionUtil.removeValue(request, "newUser");
                sessionUtil.removeValue(request, "code");
                response.sendRedirect(request.getContextPath() + "/login");
            }else
            {
                System.out.println("Nhập sai mã code");
                response.sendRedirect(request.getContextPath() + "/confirmcode");
            }
        }
    }

    public void showHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("products", productService.getProductsForHome());
        request.setAttribute("categories", categoryService.getCategories());

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
