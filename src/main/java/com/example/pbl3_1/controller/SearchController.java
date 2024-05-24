//package com.example.pbl3_1.controller;
//
//import com.example.pbl3_1.Util.SessionUtil;
//import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
//import com.example.pbl3_1.controller.dto.product.SellerDTO;
//import com.example.pbl3_1.service.ProductService;
//import com.example.pbl3_1.service.impl.ProductServiceImpl;
//import com.fasterxml.jackson.databind.ObjectMapper;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//import java.net.URLEncoder;
//import java.nio.charset.StandardCharsets;
//import java.util.List;
//
//@WebServlet(name = "SearchController", urlPatterns = {"/search", "/suggestsearch"})
//public class SearchController extends HttpServlet {
//    private final ProductService productService = new ProductServiceImpl();
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        response.setContentType("text/html; charset=UTF-8");
//
//        String action2 = request.getServletPath();
//
//        if(action2 == null){
//            request.getRequestDispatcher("index.jsp").forward(request, response);
//        } else {
//            SessionUtil sessionUtil = SessionUtil.getInstance();
//            switch (action2) {
//                case "/suggestsearch":
//                    System.out.println("Start");
//                    SuggestSearch(request, response);
//                    break;
//                case "/search":
//                    ShowSearch(request, response);
//                    break;
//            }
//        }
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String keyword = request.getParameter("search");
//        String encodedKeyword = URLEncoder.encode(keyword, StandardCharsets.UTF_8);
//        String Path = request.getContextPath() + "/search?keyword=" + encodedKeyword;
//        response.sendRedirect(Path);
//    }
//
//    public void SuggestSearch(HttpServletRequest request, HttpServletResponse response) {
//        String textSearch = request.getParameter("searchData");
//        System.out.println(textSearch);
//        List<String> data = productService.getSuggestName(textSearch);
//        ObjectMapper objectMapper = new ObjectMapper();
//        response.setContentType("application/json");
//        response.setCharacterEncoding("UTF-8");
//        try {
//            String json = objectMapper.writeValueAsString(data);
//            response.getWriter().write(json);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
//
//
//    public void ShowSearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String keyword = request.getParameter("keyword");
//        SessionUtil sessionUtil = SessionUtil.getInstance();
//        sessionUtil.putValue(request, "keyword", keyword);
//        List<ProductPreviewDTO> products = productService.getProductsForSearch(keyword);
//
//        List<SellerDTO> sellers = productService.getSellersForSearch(keyword);
//        System.out.println("size = " + products.size());
//        request.setAttribute("searchsellers", sellers);
//        request.setAttribute("searchproducts", products);
//        request.getRequestDispatcher("Search.jsp").forward(request, response);
//    }
//}
