package com.example.pbl3_1.controller;

//import com.example.pbl3_1.Util.HttpUtil;
import com.example.pbl3_1.Util.PasswordEncryption;
import com.example.pbl3_1.Util.SendMail;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.AccountFunction.*;
import com.example.pbl3_1.controller.dto.product.ProductForHomeDTO;
import com.example.pbl3_1.entity.Egender;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.mail.Email;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.List;
import java.util.Random;

@WebServlet(name = "home", urlPatterns = {"/home", "/login", "/register", "/userinfor", "/confirmemail", "/logout", "/forgotpass", "/resetpass", "/changepass", "/changeinfor"})
public class HomeController extends HttpServlet {

    private final UserService userService = new UserServiceImpl();
    private final ProductService productService = new ProductServiceImpl();
    private final CategoryService categoryService = new CategoryServiceImpl();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String action2 = request.getServletPath();

        if(action2 == null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            SessionUtil sessionUtil = SessionUtil.getInstance();
            switch (action2) {
                case "/login":
                    if(sessionUtil.getValue(request, "USERMODEL") != null)
                        response.sendRedirect(request.getContextPath() + "/home");
                    else
                        request.getRequestDispatcher("Login.jsp").forward(request, response);
                    break;
                case "/userinfor":
                case "/changepass":
                case "/changeinfor":
                    sessionUtil.putValue(request, "EmailStatus", true);
                    response.sendRedirect(request.getContextPath() + "/UserInformation.jsp");
                    break;
                case "/register":
                    if(sessionUtil.getValue(request, "USERMODEL") != null)
                        response.sendRedirect(request.getContextPath() + "/home");
                    else
                        request.getRequestDispatcher("Sign_Up.jsp").forward(request, response);
                    break;
                case "/confirmemail":
                    request.getRequestDispatcher("ConfirmationEmail.jsp").forward(request, response);
                    break;
                case "/logout":
                    sessionUtil.removeValue(request, "USERMODEL");
                    response.sendRedirect(request.getContextPath() + "/home");
                    break;
                case "/forgotpass":
                    request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
                    break;
                case "/resetpass":
                    request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
                    break;
                default:
                    showHome(request, response);
                    break;
            }
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        if(action != null && action.equals("/login")){
            boolean check = Login(request);
            if(check) {
                response.sendRedirect(request.getContextPath() +
                        (SessionUtil.getInstance().getValue(request, "redirect") != null ?
                                SessionUtil.getInstance().getValue(request, "redirect").toString() :
                                "/home"));
                SessionUtil.getInstance().removeValue(request, "redirect");
            }
            else response.sendRedirect(request.getContextPath() + "/login?action=login&message=username_password_invalid&alert=danger");
        }else if (action != null && action.equals("/register")){
            boolean check = Register(request);
            if(check) response.sendRedirect(request.getContextPath() + "/confirmemail");
            else response.sendRedirect(request.getContextPath() + "/register");
        }else if(action != null && action.equals("/confirmemail"))
        {
            int check = ConfirmEmail(request);
            if(check == 1) response.sendRedirect(request.getContextPath() + "/login");
            else if(check == 2) response.sendRedirect(request.getContextPath() + "/resetpass");
            else if (check == 3) response.sendRedirect(request.getContextPath() + "/confirmemail");
        }else if(action != null && action.equals("/forgotpass"))
        {
            boolean check = ForgotPass(request);
            if(check) response.sendRedirect(request.getContextPath() + "/confirmemail");
            else response.sendRedirect(request.getContextPath() + "/forgotpass");
        }else if(action != null && action.equals("/resetpass"))
        {
            boolean check = ResetPass(request);
            if(check) response.sendRedirect(request.getContextPath() + "/login");
            else response.sendRedirect(request.getContextPath() + "/resetpass");
        }else if(action != null && action.equals("/changepass"))
        {
            ChangePass(request);
            response.sendRedirect(request.getContextPath() + "/userinfor");
        }else if(action != null && action.equals("/changeinfor"))
        {
            ChangeInfor(request);
            response.sendRedirect(request.getContextPath() + "/userinfor");
        }else if(action != null && action.equals("/cfoldemail"))
        {
            SessionUtil sessionUtil = SessionUtil.getInstance();
            String email = request.getParameter("UI_email");
            String code = RandomCode();
            SendMail.Send(email, code);
            sessionUtil.putValue(request, "code", code);
        }
    }

    public String RandomCode()
    {
        String code = "";
        for(int i = 0; i < 6; i++)
        {
            Random rand = new Random();
            int randomNumber = Math.abs((rand.nextInt())%10);
            code += randomNumber;
        }
        return code;
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
                String code = "";
                for (int i = 0; i < 6; i++) {
                    Random rand = new Random();
                    int randomNumber = Math.abs((rand.nextInt()) % 10);
                    code += randomNumber;
                }
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
                String Code = code;
                System.out.println(Code);
                // Tạo một luồng mới để gửi email bất đồng bộ
                Thread sendMailThread = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        SendMail.Send(email, Code);
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
            String code = "";
            for(int i = 0; i < 6; i++)
            {
                Random rand = new Random();
                int randomNumber = Math.abs((rand.nextInt())%10);
                code += randomNumber;
            }
            sessionUtil.putValue(request, "code", code);
            sessionUtil.putValue(request, "email", email);
            sessionUtil.putValue(request, "cfstatus", "forgotpass");
            String Code = code;
            // Tạo một luồng mới để gửi email bất đồng bộ
            Thread sendMailThread = new Thread(new Runnable() {
                @Override
                public void run() {
                    SendMail.Send(email, Code);
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

    public int ConfirmEmail(HttpServletRequest request) {
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
                System.out.println("Da dk thanh cong");
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
            return 3;
        }
        return 3;
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
    public void showHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductForHomeDTO> products = productService.getProductsForHome();
        request.setAttribute("products", products);
        request.setAttribute("categories", categoryService.getCategories());

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
