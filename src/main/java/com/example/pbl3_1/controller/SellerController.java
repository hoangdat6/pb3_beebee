package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.RandomCode;
import com.example.pbl3_1.Util.SendMail;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.impl.SellerServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(name = "seller", urlPatterns = {"/seller/account/register", "/seller", "/seller/account/avatar"})
public class SellerController extends HttpServlet {
    private final SellerService sellerService = new SellerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String path = request.getServletPath();

        switch (path) {
            case "/shop":
                String shopId = request.getParameter("id");
                showShop(request, response, shopId);
                break;
            case "/seller":
                checkAccount(request, response);
                break;
            case "/seller/account/register":
                request.getRequestDispatcher("Register.jsp").forward(request, response);
                break;
            case "/seller/account/avatar":
                request.getRequestDispatcher("AvatarAndCover.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        if(action != null && action.equals("/seller/account/register"))
        {
            SessionUtil sessionUtil = SessionUtil.getInstance();
            String buttonValue = request.getParameter("button");
            if (buttonValue.equals("Xác minh"))
            {
                String nameshop = request.getParameter("nameshop");
                sessionUtil.putValue(request, "nameshop", nameshop);
                String code = RandomCode.RdCode();
                sessionUtil.putValue(request, "code", code);
                sessionUtil.putValue(request, "cfstatus", "sellerregister");
                String email = request.getParameter("shopemail");
                // Tạo một luồng mới để gửi email bất đồng bộ
                Thread sendMailThread = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        SendMail.Send(email, code);
                    }
                });
                sendMailThread.start(); // Bắt đầu chạy luồng để gửi email
                // Tiếp tục chuyển hướng trang mà không cần chờ việc gửi email hoàn tất
                response.sendRedirect(request.getContextPath() + "/confirmemail");

            }else if(buttonValue.equals("Hủy"))
            {
                response.sendRedirect(request.getContextPath() + "/home");
            }
        }else if(action != null && action.equals("/seller/account/avatar"))
        {

        }
    }

    private void checkAccount(HttpServletRequest request, HttpServletResponse response) throws IOException {
        SessionUtil sessionUtil = SessionUtil.getInstance();
        User user = (User)sessionUtil.getValue(request, "USERMODEL");
        if(user != null)
        {
            response.sendRedirect(request.getContextPath() + "/seller/account/register");
        }else
        {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }

    private void showShop(HttpServletRequest request, HttpServletResponse response, String shopId) {
        try {
            request.setAttribute("shop", sellerService.getShopById(Long.parseLong(shopId)));
            request.getRequestDispatcher("/shop.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
