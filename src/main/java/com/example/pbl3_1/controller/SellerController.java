package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.RandomCode;
import com.example.pbl3_1.Util.SendMail;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.controller.user_login.CheckLoggedUser;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.Seller;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.impl.SellerServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;

@WebServlet(name = "seller", urlPatterns = {"/seller/account/register", "/seller", "/shop"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 10,      // 10MB
    maxRequestSize = 1024 * 1024 * 50)  // 50MB

public class SellerController extends HttpServlet {
    private final SellerService sellerService = new SellerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String path = request.getServletPath();

        switch (path) {
            case "/shop":
                String shopId = request.getParameter("id");
                String urlRedirect = path + "?id=" + shopId;
                showShop(request, response, shopId, urlRedirect);
                break;
            case "/seller":
                checkAccount(request, response);
                break;
            case "/seller/account/register":
                String action = request.getParameter("action");
                if(action == null){
                    request.getRequestDispatcher("Register.jsp").forward(request, response);
                }else if(action.equals("complete")){
                    request.getRequestDispatcher("CompleteRegister.jsp").forward(request, response);
                }else if(action.equals("avatar")){
                    request.getRequestDispatcher("AvatarAndCover.jsp").forward(request, response);
                }
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        switch (path) {
            case "/seller/account/register":
                String action = request.getParameter("action");
                if(action == null){
                    register(request, response);
                }else if(action.equals("avatar")){
                    avatar(request, response);
                }else if(action.equals("complete")){
                    response.sendRedirect(request.getContextPath() + "/shop?id=" + SessionUtil.getInstance().getValue(request, "sellerId"));
                }
                break;
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        SessionUtil sessionUtil = SessionUtil.getInstance();
        String buttonValue = request.getParameter("button");

        User userLogin;
        if (buttonValue.equals("Xác nhận")){
            userLogin = (User) sessionUtil.getValue(request, "USERMODEL");

            // Lấy thông tin từ form
            String shopName = request.getParameter("shopName");
            String city = request.getParameter("city");
            String district = request.getParameter("district");
            String ward = request.getParameter("ward");
            String detail = request.getParameter("detail");

            Address address = Address.builder()
                    .province(city)
                    .district(district)
                    .ward(ward)
                    .detail(detail)
                    .build();

            Seller seller = Seller.builder()
                    .shopName(shopName)
                    .userId(userLogin.getId())
                    .build();
            // Lưu thông tin vào session để sử dụng nếu người dùng chọn cancel
            sessionUtil.putValue(request, "address", address);
            sessionUtil.putValue(request, "seller", seller);

            // xác nhận email
            String code = RandomCode.RdCode();
            sessionUtil.putValue(request, "code", code);
            sessionUtil.putValue(request, "cfstatus", "sellerregister");
            String email = request.getParameter("shopEmail");
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
        }else if(buttonValue.equals("Hủy")){
            response.sendRedirect(request.getContextPath() + "/home");
        }
    }

    private void avatar(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("multipart/form-data; charset=UTF-8");

        SessionUtil sessionUtil = SessionUtil.getInstance();

        // lấy ra thông tin seller và address từ session
        Seller seller = (Seller) sessionUtil.getValue(request, "seller");
        Address address = (Address) sessionUtil.getValue(request, "address");

        // Lưu ảnh vào thư mục
        String imagePath = saveImage(request, response);
        seller.setAvatar(imagePath);

        // Lưu thông tin vào database
        Long sellerId = sellerService.addShop(seller, address);
        sessionUtil.putValue(request, "sellerId", sellerId);

        // nếu lưu thành công thì chuyển đến trang hoàn thành đăng kí
        if(sellerId == null){
            response.sendRedirect(request.getContextPath() + "/seller/account/register");
        }else {
            response.sendRedirect(request.getContextPath() + "/seller/account/register?action=complete");
        }
    }

    private String saveImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get source ảnh từ request, ảnh này được gửi từ form
        Part imgAvatar = request.getPart("avatar");
        Part imgCover = request.getPart("cover");

        // Đây là đường dẫn đến thư mục webapp cả ở local và lúc đang chạy

        // đây là thư mục ở local
        String rootPath = getServletContext().getRealPath("/").replace("target" + File.separator +"PBL3_1-1.0-SNAPSHOT" + File.separator,
                "src" + File.separator + "main" + File.separator + "webapp" + File.separator );

        // Path lưu ảnh khi đang chạy : vì khi đang chạy thì ảnh cần được lưu vào 1 thư mục của dự án đang chạy.
        String webappDirectoryRoot = getServletContext().getRealPath("/");

        // Tạo thư mục nếu chưa tồn tại
        if(!new File(rootPath).exists()){
            new File(rootPath).mkdir();
        }

        if(!new File(webappDirectoryRoot).exists()){
            new File(webappDirectoryRoot).mkdir();
        }

        User user = (User)SessionUtil.getInstance().getValue(request, "USERMODEL");

        // Lưu ảnh vào thư mục
        String sellerImagePath = "SellerImages/";

        String relative = user.getId().toString(); // tên thư mục được lưu theo user.

        Path pathRoot = Path.of(rootPath + sellerImagePath + relative);
        Path pathWebapp = Path.of(webappDirectoryRoot + sellerImagePath + relative);

        if(!Files.exists(pathRoot)){
            Files.createDirectories(pathRoot);
        }
        if(!Files.exists(pathWebapp)){
            Files.createDirectories(pathWebapp);
        }

        String avatarFilename = "/avatar.png";
        String coverFilename = "/cover.png";

        byte[] avatar = partToBytes(imgAvatar);
        byte[] cover =  partToBytes(imgCover);


        // lưu ảnh vào local
        Files.write(Path.of(pathRoot + avatarFilename), avatar);
        Files.write(Path.of(pathRoot + coverFilename), cover);

        // lưu ảnh vào thư mục webapp của thư mục đang chạy
        Files.write(Path.of(pathWebapp + avatarFilename), avatar);
        Files.write(Path.of(pathWebapp + coverFilename), cover);
        return sellerImagePath + relative + avatarFilename + "," + sellerImagePath + relative + coverFilename;
    }

    public byte[] partToBytes(Part part) throws IOException {
        InputStream inputStream = part.getInputStream();
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int bytesRead;
        while ((bytesRead = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, bytesRead);
        }
        return outputStream.toByteArray();
    }

    private void checkAccount(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String path = request.getServletPath();
        if(CheckLoggedUser.checkLoggedUser(request, response, path)){
            response.sendRedirect(request.getContextPath() + "/seller/account/register");
        }
    }

    private void showShop(HttpServletRequest request, HttpServletResponse response, String shopId, String urlRedirect) {
        try {
            if(CheckLoggedUser.checkLoggedUser(request, response, urlRedirect)){
                User user = (User) request.getSession().getAttribute("USERMODEL");
                request.setAttribute("seller", sellerService.getShopById(Long.parseLong(shopId), user.getId()));
                request.getRequestDispatcher("Shop.jsp").forward(request, response);
            }
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
