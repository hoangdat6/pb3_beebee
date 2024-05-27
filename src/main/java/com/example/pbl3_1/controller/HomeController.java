package com.example.pbl3_1.controller;

//import com.example.pbl3_1.Util.HttpUtil;
import com.example.pbl3_1.Util.*;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.service.*;
import com.example.pbl3_1.service.impl.CategoryServiceImpl;
import com.example.pbl3_1.service.impl.ProductServiceImpl;
import com.example.pbl3_1.service.impl.UserServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;

@WebServlet(name = "home", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {
    private final ProductService productService = new ProductServiceImpl();
    private final CategoryService categoryService = new CategoryServiceImpl();
    private final UserService userService = new UserServiceImpl();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        showHome(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        if(action != null && action.equals("/cfoldemail"))
        {
            SessionUtil sessionUtil = SessionUtil.getInstance();
            String email = request.getParameter("UI_email");
            String code = RandomCode.RdCode();
            // Tạo một luồng mới để gửi email bất đồng bộ
            Thread sendMailThread = new Thread(new Runnable() {
                @Override
                public void run() {
                    SendMail.Send(email, code);
                }
            });
            sendMailThread.start(); // Bắt đầu chạy luồng để gửi email
            // Tiếp tục chuyển hướng trang mà không cần chờ việc gửi email hoàn tất
            sessionUtil.putValue(request, "code", code);
        }
        else if(action != null && action.equals("/search"))
        {
            String keyword = request.getParameter("search");
            String encodedKeyword = URLEncoder.encode(keyword, StandardCharsets.UTF_8.toString());
            String Path = request.getContextPath() + "/search?keyword=" + encodedKeyword;
            response.sendRedirect(Path);
        }
    }



    public void showHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductPreviewDTO> products = productService.getProductsForHome();
        request.setAttribute("products", products);
        request.setAttribute("categories", categoryService.getCategories());

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
