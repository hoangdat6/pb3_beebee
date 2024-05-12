package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SendMail;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.service.UserService;
import com.example.pbl3_1.service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Random;

@WebServlet(name = "ForgotPasswordController", value = "/forgotpass")
public class ForgotPasswordController extends HttpServlet {
    private final UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean check = ForgotPass(request);
        if(check) response.sendRedirect(request.getContextPath() + "/confirmemail");
        else response.sendRedirect(request.getContextPath() + "/forgotpass");
    }

    public boolean ForgotPass(HttpServletRequest request) {
        String email = request.getParameter("email");
        SessionUtil sessionUtil = SessionUtil.getInstance();
        if(userService.findEmail(email))
        {
            String code = "";
            for(int i = 0; i < 6; i++)
            {
                Random rand = new Random();
                int randomNumber = Math.abs((rand.nextInt())%10);
                code += randomNumber;
            }
            sessionUtil.putValue(request, "code", code);
            sessionUtil.putValue(request, "email", email);
            sessionUtil.putValue(request, "cfstatus", "forgotpass");
            String Code = code;
            // Tạo một luồng mới để gửi email bất đồng bộ
            Thread sendMailThread = new Thread(new Runnable() {
                @Override
                public void run() {
                    SendMail.Send(email, Code);
                }
            });
            sendMailThread.start(); // Bắt đầu chạy luồng để gửi email
            // Tiếp tục chuyển hướng trang mà không cần chờ việc gửi email hoàn tất
            return true;
        }else
        {
            //
            return false;
        }
    }
}
