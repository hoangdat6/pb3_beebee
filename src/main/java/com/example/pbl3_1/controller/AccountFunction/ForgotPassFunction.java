package com.example.pbl3_1.controller.AccountFunction;

import com.example.pbl3_1.Util.SendMail;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.service.UserService;
import jakarta.servlet.http.HttpServletRequest;

import java.util.Random;

public class ForgotPassFunction {
    public static boolean ForgotPass(HttpServletRequest request, UserService userService) {
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
