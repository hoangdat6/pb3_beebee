package com.example.pbl3_1.controller.user_login;

import com.example.pbl3_1.Util.SessionUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class CheckLoggedUser {
    public static boolean checkLoggedUser(HttpServletRequest request, HttpServletResponse response, String url) throws ServletException, IOException {
        if(request.getSession().getAttribute("USERMODEL") == null) {
            SessionUtil.getInstance().putValue(request, "redirect", url);
            response.sendRedirect(request.getContextPath() + "/login?action=login&message=login_required&alert=danger");
            return false;
        }
        return true;
    }
}
