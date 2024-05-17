package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.service.UserService;
import com.example.pbl3_1.service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ResetPasswordController", value = "/resetpass")
public class ResetPasswordController extends HttpServlet {
    private final UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean check = ResetPass(request);
        if(check) response.sendRedirect(request.getContextPath() + "/login");
        else response.sendRedirect(request.getContextPath() + "/resetpass");
    }

    public boolean ResetPass(HttpServletRequest request) {
        String password = request.getParameter("password");
        String confirmpass = request.getParameter("confirmpass");
        SessionUtil sessionUtil = SessionUtil.getInstance();
        sessionUtil.putValue(request, "rspass", password);
        sessionUtil.putValue(request, "rscfpass", confirmpass);
        sessionUtil.putValue(request, "rsstatus", true);
        if (password.equals(confirmpass)) {
            String username = userService.findUsernameByEmail(sessionUtil.getValue(request, "email").toString());
            String newPass = PasswordEncryption.ToSHA1(password, username);
            System.out.println("NewPass = " + newPass);
            userService.updatePass(username, newPass);
            System.out.println("Success Change Pass");
            sessionUtil.removeValue(request, "email");
            sessionUtil.removeValue(request, "code");
            sessionUtil.removeValue(request, "cfstatus");
            sessionUtil.removeValue(request, "rspass");
            sessionUtil.removeValue(request, "rscfpass");
            sessionUtil.removeValue(request, "rsstatus");
            return true;
        } else {
            sessionUtil.putValue(request, "rsstatus", false);
            return false;
        }
    }
}
