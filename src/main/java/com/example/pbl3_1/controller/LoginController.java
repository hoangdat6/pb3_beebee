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
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
    private final UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        SessionUtil sessionUtil = SessionUtil.getInstance();

        if(sessionUtil.getValue(request, "USERMODEL") != null)
            response.sendRedirect(request.getContextPath() + "/home");
        else
            request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean check = Login(request);
        if(check) {
            // Lấy URL trang người dùng muốn truy cập (nếu có)
            HttpSession session = request.getSession();
            String targetUrl = (String) session.getAttribute("redirect");

            // Xóa thông tin về targetUrl từ session sau khi đã sử dụng
            session.removeAttribute("redirect");

            if (targetUrl != null && !targetUrl.isEmpty()) {
                // Nếu có targetUrl, chuyển hướng đến trang đó
                response.sendRedirect(targetUrl);
            } else {
                // Nếu không, chuyển hướng đến trang mặc định
                response.sendRedirect(request.getContextPath() + "/home");
            }
        }
        else response.sendRedirect(request.getContextPath() + "/login?action=login&message=username_password_invalid&alert=danger");
    }

    public boolean Login(HttpServletRequest request)
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
