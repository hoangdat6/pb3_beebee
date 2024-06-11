package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.user_login.CheckLoggedUser;
import com.example.pbl3_1.entity.Seller;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.*;
import com.example.pbl3_1.service.impl.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Objects;

@WebServlet(name = "product", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {
    public final ProductService productService = new ProductServiceImpl();
    private final SellerService sellerService = new SellerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String path = request.getServletPath();

        System.out.println(path);
        switch (path) {
            case "/product":
                showProductDetails(request, response);
                break;
        }
    }

    public void showProductDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("id");
        Long id = Long.parseLong(productId);

        ProductDetailDTO productDetailDTO = productService.getProductDetail(id);

        User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        Long sellerId = sellerService.getIdByUserId(user.getId());

        if(productDetailDTO == null) {
            productDetailDTO  = new ProductDetailDTO();
            productDetailDTO.setAvailable(false);
        }


        if(Objects.equals(sellerId, productDetailDTO.getSellerId())) {
            productDetailDTO.setProductOfSeller(true);
        }

        request.setAttribute("productDetail", productDetailDTO);
        request.getRequestDispatcher("Product_Details.jsp").forward(request, response);
    }
}
