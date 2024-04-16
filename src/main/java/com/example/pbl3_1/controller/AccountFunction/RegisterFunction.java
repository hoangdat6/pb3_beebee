package com.example.pbl3_1.controller.AccountFunction;

import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.SendMail;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.Egender;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.UserService;
import jakarta.servlet.http.HttpServletRequest;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.AbstractMap;
import java.util.Random;

public class RegisterFunction {
    public static boolean Register(HttpServletRequest request, UserService userService) {
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
                String code = "";
                for (int i = 0; i < 6; i++) {
                    Random rand = new Random();
                    int randomNumber = Math.abs((rand.nextInt()) % 10);
                    code += randomNumber;
                }
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
                String Code = code;
                System.out.println(Code);
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
