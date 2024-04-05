package com.example.pbl3_1.controller.AccountFunction;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.UserService;
import jakarta.servlet.http.HttpServletRequest;

public class ConfirmEmailFunction {
    public static int ConfirmEmail(HttpServletRequest request, UserService userService) {
        SessionUtil sessionUtil = SessionUtil.getInstance();
        String code = sessionUtil.getValue(request, "code").toString();
        String confirmcode = request.getParameter("code");
//            String code = (String)sessionUtil.getValue(request, "code");
        sessionUtil.putValue(request, "codestatus", true);
        if(confirmcode.equals(code))
        {
            String status = sessionUtil.getValue(request, "cfstatus").toString();
            if(status.equals("register"))
            {
                sessionUtil.removeValue(request, "codestatus");
                User user = (User)sessionUtil.getValue(request, "newUser");
                userService.save(user);
                sessionUtil.removeValue(request, "newUser");
                sessionUtil.removeValue(request, "code");
                sessionUtil.removeValue(request, "cfstatus");
                sessionUtil.removeValue(request, "email");
                return 1;
            }else if(status.equals("forgotpass"))
            {
                return 2;
            }
        }else
        {
            sessionUtil.putValue(request, "codestatus", false);
            System.out.println("Nhập sai mã code");
            return 3;
        }
        return 3;
    }
}
