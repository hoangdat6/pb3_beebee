package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.ERole;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.UserService;
import com.example.pbl3_1.service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ConfirmEmailController", value = "/confirmemail")
public class ConfirmEmailController extends HttpServlet {
    private final UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        request.getRequestDispatcher("ConfirmationEmail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int check = ConfirmEmail(request);
        if(check == 1) response.sendRedirect(request.getContextPath() + "/login");
        else if(check == 2) response.sendRedirect(request.getContextPath() + "/resetpass");
        else if(check == 3) response.sendRedirect(request.getContextPath() + "/seller/account/register?action=avatar");
        else if (check == 4) response.sendRedirect(request.getContextPath() + "/confirmemail");
    }

    public int ConfirmEmail(HttpServletRequest request) {
        SessionUtil sessionUtil = SessionUtil.getInstance();
        String code = sessionUtil.getValue(request, "code").toString();
        String confirmcode = request.getParameter("code");
//            String code = (String)sessionUtil.getValue(request, "code");
        sessionUtil.putValue(request, "codestatus", true);
        if(confirmcode.equals(code))
        {
            String status = sessionUtil.getValue(request, "cfstatus").toString();
            System.out.println("status" + status);
            if(status.equals("register"))
            {
                System.out.println("Da dk thanh cong");
                sessionUtil.removeValue(request, "codestatus");
                User user = (User)sessionUtil.getValue(request, "newUser");
                user.setRole(ERole.CUSTOMER);
                userService.save(user);
                sessionUtil.removeValue(request, "newUser");
                sessionUtil.removeValue(request, "code");
                sessionUtil.removeValue(request, "cfstatus");
                sessionUtil.removeValue(request, "email");
                return 1;
            }else if(status.equals("forgotpass"))
            {
                return 2;
            }else if(status.equals("sellerregister"))
            {
                return 3;
            }
        }else
        {
            sessionUtil.putValue(request, "codestatus", false);
            return 4;
        }
        return 4;
    }
}
