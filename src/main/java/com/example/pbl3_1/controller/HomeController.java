package com.example.pbl3_1.controller;

//import com.example.pbl3_1.Util.HttpUtil;
import com.example.pbl3_1.Util.*;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.ERole;
import com.example.pbl3_1.entity.Egender;
import com.example.pbl3_1.entity.User;
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
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.AbstractMap;
import java.util.List;
import java.util.Objects;
import java.util.Random;

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

    public void SuggestSearch(HttpServletRequest request, HttpServletResponse response)
    {
        String keyword = request.getParameter("searchData");
        System.out.println(keyword);
        List<String> data = productService.getSuggestName(keyword);
        ObjectMapper objectMapper = new ObjectMapper();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        try {
            String json = objectMapper.writeValueAsString(data);
            response.getWriter().write(json);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void ShowSearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String keyword = request.getParameter("keyword");
        keyword = URLDecoder.decode(keyword, "UTF-8");
        boolean fill = request.getParameter("fill") != null;
        SessionUtil sessionUtil = SessionUtil.getInstance();
        if(fill)
        {
            System.out.println("co fill");
            if(request.getParameter("minPrice") != null ) System.out.println(request.getParameter("minPrice"));
            int minPrice = request.getParameter("minPrice") != null ? Integer.parseInt(request.getParameter("minPrice")) : 0;
            int maxPrice = request.getParameter("maxPrice") != null ? Integer.parseInt(request.getParameter("maxPrice")) : 1000000000;
            String categories = request.getParameter("categoryID") != null ? request.getParameter("categoryID") : "";
            System.out.println("Keyword = " + keyword + "minPrice = " + minPrice + " maxPrice = " + maxPrice + " categories = " + categories);
            List<ProductPreviewDTO> products = productService.getProductsForSearch(keyword, minPrice, maxPrice, categories);
            List<SellerDTO> sellers = productService.getSellersForSearch(keyword, minPrice, maxPrice, categories);
            System.out.println(products);
            System.out.println(sellers);
            TwoListContainer data = new TwoListContainer(products, sellers);
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                objectMapper.writeValue(response.getOutputStream(), data);
            } catch (IOException e) {
                e.printStackTrace();
            }

        }else
        {
            sessionUtil.putValue(request, "keyword", keyword);
            System.out.println("khong fill");
            List<ProductPreviewDTO> products = productService.getProductsForSearch(keyword, 0, 1000000000, "");
            List<SellerDTO> sellers = productService.getSellersForSearch(keyword, 0, 1000000000, "");
            List<Category> SearchCategories = productService.getAllCategories();
            System.out.println(SearchCategories.get(0).getId() + "   " + SearchCategories.get(0).getName());
            System.out.println(sellers);
            System.out.println(products);
            request.setAttribute("searchsellers", sellers);
            request.setAttribute("searchproducts", products);
            request.setAttribute("searchcategories", SearchCategories);
            request.getRequestDispatcher("Search.jsp").forward(request, response);
        }

    }

    public boolean ResetPass(HttpServletRequest request) {
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
    public boolean Register(HttpServletRequest request) {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
//            String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        Egender gender = Egender.fromString(request.getParameter("gender"));
        Date dob = Date.valueOf(request.getParameter("dob"));
        Timestamp createdAt = new Timestamp(System.currentTimeMillis());
        AbstractMap.SimpleEntry<Boolean, Boolean> check = userService.findByUsernameOrEmail(username, email);
        SessionUtil sessionUtil = SessionUtil.getInstance();
        User newUser = new User();
        newUser.SetAttribute(username, password, email, gender, dob, createdAt);
        sessionUtil.putValue(request, "newUser", newUser);
        sessionUtil.putValue(request, "confirmPassword", confirmPassword);
        sessionUtil.putValue(request, "userStatus", true);
        sessionUtil.putValue(request, "emailStatus", true);
        sessionUtil.putValue(request, "cpStatus", true);
        System.out.println(check.getKey());
        System.out.println(check.getValue());
        if (check.getKey() && check.getValue()) {
            if (password.equals(confirmPassword)) {
                newUser.setPassword(PasswordEncryption.ToSHA1(newUser.getPassword(), username));
                String code = RandomCode.RdCode();
                sessionUtil.removeValue(request, "newUser");
                sessionUtil.putValue(request, "email", email);
                sessionUtil.putValue(request, "newUser", newUser);
                sessionUtil.removeValue(request, "confirmPassword");
                sessionUtil.putValue(request, "code", code);
                sessionUtil.removeValue(request, "userStatus");
                sessionUtil.removeValue(request, "emailStatus");
                sessionUtil.removeValue(request, "cpStatus");
                sessionUtil.putValue(request, "cfstatus", "register");
                sessionUtil.putValue(request, "rsstatus", true);
                // Tạo một luồng mới để gửi email bất đồng bộ
                Thread sendMailThread = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        SendMail.Send(email, code);
                    }
                });
                sendMailThread.start(); // Bắt đầu chạy luồng để gửi email
                // Tiếp tục chuyển hướng trang mà không cần chờ việc gửi email hoàn tất
                return true;
            } else {
                sessionUtil.putValue(request, "cpStatus", false);
                return false;
            }
        } else {
            sessionUtil.putValue(request, "userStatus", check.getKey());
            sessionUtil.putValue(request, "emailStatus", check.getValue());
            return false;
        }
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
    public boolean ForgotPass(HttpServletRequest request) {
        String email = request.getParameter("email");
        SessionUtil sessionUtil = SessionUtil.getInstance();
        if(userService.findEmail(email))
        {
            String code = RandomCode.RdCode();
//            for(int i = 0; i < 6; i++)
//            {
//                Random rand = new Random();
//                int randomNumber = Math.abs((rand.nextInt())%10);
//                code += randomNumber;
//            }
            sessionUtil.putValue(request, "code", code);
            sessionUtil.putValue(request, "email", email);
            sessionUtil.putValue(request, "cfstatus", "forgotpass");
//            String Code = code;
            // Tạo một luồng mới để gửi email bất đồng bộ
            Thread sendMailThread = new Thread(new Runnable() {
                @Override
                public void run() {
                    SendMail.Send(email, code);
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

    public void showHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductPreviewDTO> products = productService.getProductsForHome();
        request.setAttribute("products", products);
        request.setAttribute("categories", categoryService.getCategories());

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
