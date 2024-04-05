package com.example.pbl3_1.controller.AccountFunction;

import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.service.UserService;
import jakarta.servlet.http.HttpServletRequest;

public class ResetPassFunction {
    public static boolean ResetPass(HttpServletRequest request, UserService userService) {
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
