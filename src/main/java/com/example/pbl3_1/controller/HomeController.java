package com.example.pbl3_1.controller;

//import com.example.pbl3_1.Util.HttpUtil;
import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.SendMail;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.AccountFunction.*;
import com.example.pbl3_1.service.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "home", urlPatterns = {"/home", "/login", "/register", "/userinfor", "/confirmemail", "/logout", "/forgotpass", "/resetpass"})
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

        if(action2 == null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            SessionUtil sessionUtil = SessionUtil.getInstance();
            switch (action2) {
                case "/login":
                    if(sessionUtil.getValue(request, "USERMODEL") != null)
                        response.sendRedirect(request.getContextPath() + "/home");
                    else
                        request.getRequestDispatcher("Login.jsp").forward(request, response);
                    break;
                case "/userinfor":
                    response.sendRedirect(request.getContextPath() + "/UserInformation.jsp");
                    break;
                case "/register":
                    if(sessionUtil.getValue(request, "USERMODEL") != null)
                        response.sendRedirect(request.getContextPath() + "/home");
                    else
                        request.getRequestDispatcher("Sign_Up.jsp").forward(request, response);
                    break;
                case "/confirmemail":
                    request.getRequestDispatcher("ConfirmationEmail.jsp").forward(request, response);
                    break;
                case "/logout":
                    sessionUtil.removeValue(request, "USERMODEL");
                    response.sendRedirect(request.getContextPath() + "/home");
                    break;
                case "/forgotpass":
                    request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
                    break;
                case "/resetpass":
                    request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
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
            boolean check = LoginFunction.Login(request, userService);
            if(check) response.sendRedirect(request.getContextPath() + "/home");
            else response.sendRedirect(request.getContextPath() + "/login?action=login&message=username_password_invalid&alert=danger");
        }else if (action != null && action.equals("/register")){
            boolean check = RegisterFunction.Register(request, userService);
            if(check) response.sendRedirect(request.getContextPath() + "/confirmemail");
            else response.sendRedirect(request.getContextPath() + "/register");
        }else if(action != null && action.equals("/confirmemail"))
        {
            int check = ConfirmEmailFunction.ConfirmEmail(request, userService);
            if(check == 1) response.sendRedirect(request.getContextPath() + "/login");
            else if(check == 2) response.sendRedirect(request.getContextPath() + "/resetpass");
            else if(check == 3) response.sendRedirect(request.getContextPath() + "/confirmemail");
        }else if(action != null && action.equals("/forgotpass"))
        {
            boolean check = ForgotPassFunction.ForgotPass(request, userService);
            if(check) response.sendRedirect(request.getContextPath() + "/confirmemail");
            else response.sendRedirect(request.getContextPath() + "/forgotpass");
        }else if(action != null && action.equals("/resetpass"))
        {
            boolean check = ResetPassFunction.ResetPass(request, userService);
            if(check) response.sendRedirect(request.getContextPath() + "/login");
            else response.sendRedirect(request.getContextPath() + "/resetpass");
        }
    }

    public void showHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("products", productService.getProductsForHome());
        request.setAttribute("categories", categoryService.getCategories());

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
