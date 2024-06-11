package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.SessionUtil;
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

@WebServlet(name = "UserSettingController", urlPatterns = {"/usersetting/changeinfor", "/usersetting/changepass", "/usersetting/userinfor"})
public class UserSettingController extends HttpServlet {
    private final UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        SessionUtil.getInstance().putValue(request, "EmailStatus", true);
        request.getRequestDispatcher("UserInformation.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        if(action != null && action.equals("/usersetting/changepass"))
        {
            ChangePass(request);
            response.sendRedirect(request.getContextPath() + "/usersetting/userinfor");
        }else if(action != null && action.equals("/usersetting/changeinfor"))
        {
            ChangeInfor(request);
            response.sendRedirect(request.getContextPath() + "/usersetting/userinfor");
        }
    }

    public void ChangePass(HttpServletRequest request)
    {
        String OldPass = request.getParameter("oldpass");
        String NewPass = request.getParameter("newpass");
        String CfNewPass = request.getParameter("cfnewpass");
        SessionUtil sessionUtil = SessionUtil.getInstance();
        String Username = ((User)sessionUtil.getValue(request, "USERMODEL")).getUsername();
        sessionUtil.putValue(request, "oldpass", OldPass);
        sessionUtil.putValue(request, "newpass", NewPass);
        sessionUtil.putValue(request, "cfnewpass", CfNewPass);
        OldPass = PasswordEncryption.ToSHA1(OldPass, Username);
        User user = userService.findByUsernameAndPassword(Username, OldPass);
        sessionUtil.putValue(request, "cfpstatus", true);
        sessionUtil.putValue(request, "opstatus", true);
        sessionUtil.putValue(request, "changePassStatus", true);
        if(user != null)
        {
            if(NewPass.equals(CfNewPass))
            {
                NewPass = PasswordEncryption.ToSHA1(NewPass, Username);
                userService.updatePass(Username, NewPass);
                sessionUtil.removeValue(request, "oldpass");
                sessionUtil.removeValue(request, "newpass");
                sessionUtil.removeValue(request, "cfnewpass");
                sessionUtil.removeValue(request,"cfpstatus");
                sessionUtil.removeValue(request, "opstatus");
                sessionUtil.putValue(request, "changePassStatus", false);
            }else
            {
                sessionUtil.putValue(request, "cfpstatus", false);
            }
        }else
        {
            System.out.println("sai mat khau");
            sessionUtil.putValue(request, "opstatus", false);
        }
    }

    public void ChangeInfor(HttpServletRequest request)
    {
        SessionUtil sessionUtil = SessionUtil.getInstance();
        User user = (User)sessionUtil.getValue(request, "USERMODEL");
        user.setFullname(request.getParameter("UI_name"));
        user.setDob(Date.valueOf(request.getParameter("UI_dob")));
        user.setEmail(request.getParameter("UI_email"));
        user.setPhone(request.getParameter("UI_phone"));
        sessionUtil.putValue(request, "USERMODEL", user);
        userService.updateInfor(user);
    }
}
