package com.example.pbl3_1.controller.AccountFunction;

import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.UserService;
import jakarta.servlet.http.HttpServletRequest;

public class LoginFunction {
    public static boolean Login(HttpServletRequest request, UserService userService)
    {
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
            return true;
        } else {
            sessionUtil.putValue(request, "status", false);
            return false;
        }
    }
}
