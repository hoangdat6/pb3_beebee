package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.RandomCode;
import com.example.pbl3_1.Util.SendMail;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.myEnum.Egender;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.UserService;
import com.example.pbl3_1.service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.AbstractMap;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    private final UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        request.getRequestDispatcher("Sign_Up.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean check = Register(request);
        if(check) response.sendRedirect(request.getContextPath() + "/confirmemail");
        else response.sendRedirect(request.getContextPath() + "/register#");
    }

    public boolean Register(HttpServletRequest request) {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
//            String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        Egender gender = Egender.fromString(request.getParameter("gender"));
        Date dob = Date.valueOf(request.getParameter("dob"));
        Timestamp createdAt = new Timestamp(System.currentTimeMillis());
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
        if (check.getKey() && check.getValue()) {
            if (password.equals(confirmPassword)) {
                newUser.setPassword(PasswordEncryption.ToSHA1(newUser.getPassword(), username));
                String code = RandomCode.RdCode();
                sessionUtil.removeValue(request, "newUser");
                sessionUtil.putValue(request, "email", email);
                sessionUtil.putValue(request, "newUser", newUser);
                sessionUtil.removeValue(request, "confirmPassword");
                sessionUtil.putValue(request, "code", code);
                sessionUtil.removeValue(request, "userStatus");
                sessionUtil.removeValue(request, "emailStatus");
                sessionUtil.removeValue(request, "cpStatus");
                sessionUtil.putValue(request, "cfstatus", "register");
                sessionUtil.putValue(request, "rsstatus", true);
                // Tạo một luồng mới để gửi email bất đồng bộ
                Thread sendMailThread = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        SendMail.Send(email, code);
                    }
                });
                sendMailThread.start(); // Bắt đầu chạy luồng để gửi email
                // Tiếp tục chuyển hướng trang mà không cần chờ việc gửi email hoàn tất
                return true;
            } else {
                sessionUtil.putValue(request, "cpStatus", false);
                return false;
            }
        } else {
            sessionUtil.putValue(request, "userStatus", check.getKey());
            sessionUtil.putValue(request, "emailStatus", check.getValue());
            return false;
        }
    }
}
