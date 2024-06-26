package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.impl.SellerServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SellerApi", urlPatterns ={"/api/seller/ctime", "/api/seller/pop", "/api/seller/save", "/api/shop/follow"} )
public class SellerApi extends HttpServlet {
    private final SellerService sellerService = new SellerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String path = request.getServletPath();
        System.out.println(path);

        switch (path) {
            case "/api/seller/ctime":
                getProductByTime(request, response);
                break;
            case "/api/seller/pop":
                getProductByPop(request, response);
                break;
            case "/api/seller/save":
                break;
        }
    }

    private void getProductByTime(HttpServletRequest request, HttpServletResponse response) {
        Long id = Long.parseLong(request.getParameter("sellerId"));
        String priceSortBy = request.getParameter("sortBy");// DESC / ASC
        System.out.println(priceSortBy);
        List<ProductPreviewDTO> productCtime = sellerService.getShopByTimeDESC(id, 0, 15, priceSortBy);

        ObjectMapper objectMapper = new ObjectMapper();
        try {
            objectMapper.writeValue(response.getOutputStream(), productCtime);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void getProductByPop(HttpServletRequest request, HttpServletResponse response) {
        Long id = Long.parseLong(request.getParameter("sellerId"));
        String priceSortBy = request.getParameter("sortBy"); // DESC / ASC

        List<ProductPreviewDTO> productPop = sellerService.getShopByPopDESC(id, 0, 15, priceSortBy);
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            objectMapper.writeValue(response.getOutputStream(), productPop);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String path = request.getServletPath();
        System.out.println(path);

        switch (path) {
            case "/api/shop/follow":
                updateFollow(request, response);
                break;
        }
    }

    private void updateFollow(HttpServletRequest request, HttpServletResponse response) {
        String isFollowed1 = request.getParameter("isFollowed");
        Boolean isFollowed = Boolean.parseBoolean(isFollowed1);
        Long sellerId = Long.parseLong(request.getParameter("sellerId"));
        System.out.println(isFollowed1);

        User userLogin = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        sellerService.updateIsFollowed(sellerId,userLogin.getId(), isFollowed);

        ObjectMapper objectMapper = new ObjectMapper();
        try {
            objectMapper.writeValue(response.getOutputStream(), !isFollowed);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
