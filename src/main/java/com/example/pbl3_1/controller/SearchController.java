package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.Util.TwoListContainer;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.seller.SellerDTO;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.impl.ProductServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;

@WebServlet(name = "SearchController", urlPatterns = {"/search", "/suggestsearch"})
public class SearchController extends HttpServlet {
    private final ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String action2 = request.getServletPath();

        if(action2 == null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            SessionUtil sessionUtil = SessionUtil.getInstance();
            switch (action2) {
                case "/suggestsearch":
                    System.out.println("Start");
                    SuggestSearch(request, response);
                    break;
                case "/search":
                    ShowSearch(request, response);
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("search");
        String encodedKeyword = URLEncoder.encode(keyword, StandardCharsets.UTF_8);
        String Path = request.getContextPath() + "/search?keyword=" + encodedKeyword;
        response.sendRedirect(Path);
    }

    public void SuggestSearch(HttpServletRequest request, HttpServletResponse response) {
        String textSearch = request.getParameter("searchData");
        System.out.println(textSearch);
        List<String> data = productService.getSuggestName(textSearch);
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
//        keyword = URLDecoder.decode(keyword, "UTF-8");
        int size = 7;
        int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
        boolean fill = request.getParameter("fill") != null;
        SessionUtil sessionUtil = SessionUtil.getInstance();
        if(fill)
        {
            System.out.println("co fill");
            if(request.getParameter("minPrice") != null ) System.out.println(request.getParameter("minPrice"));
            int minPrice = request.getParameter("minPrice") != null ? Integer.parseInt(request.getParameter("minPrice")) : 0;
            int maxPrice = request.getParameter("maxPrice") != null ? Integer.parseInt(request.getParameter("maxPrice")) : 1000000000;
            String categories = request.getParameter("categoryID") != null ? request.getParameter("categoryID") : "";
            System.out.println("Keyword = " + keyword + "minPrice = " + minPrice + " maxPrice = " + maxPrice + " categories = " + categories + " page = " + page + " size = " + size);
            List<ProductPreviewDTO> products = productService.getProductsForSearch(keyword, minPrice, maxPrice, categories, page, size);
            List<SellerDTO> sellers = productService.getSellersForSearch(keyword, minPrice, maxPrice, categories);
            int totalPage = productService.getSearchTotalPage(keyword, minPrice, maxPrice, categories);
            System.out.println("Total page: " + totalPage);
            totalPage = totalPage % size == 0 ? totalPage / size : totalPage / size + 1;
            sessionUtil.putValue(request, "totalPage", totalPage);
            System.out.println(products);
            System.out.println(sellers);
            TwoListContainer data = new TwoListContainer(products, sellers, totalPage);
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
            List<ProductPreviewDTO> products = productService.getProductsForSearch(keyword, 0, 1000000000, "", page, size);
            List<SellerDTO> sellers = productService.getSellersForSearch(keyword, 0, 1000000000, "");
            List<Category> SearchCategories = productService.getAllCategories();
            int totalPage = productService.getSearchTotalPage(keyword, 0, 1000000000, "");
            System.out.println("Total page: " + totalPage);
            totalPage = totalPage % size == 0 ? totalPage / size : totalPage / size + 1;
            sessionUtil.putValue(request, "totalPage", totalPage);
            System.out.println(SearchCategories.get(0).getId() + "   " + SearchCategories.get(0).getName());
            System.out.println(sellers);
            System.out.println(products);
            request.setAttribute("searchsellers", sellers);
            request.setAttribute("searchproducts", products);
            request.setAttribute("searchcategories", SearchCategories);
            request.getRequestDispatcher("Search.jsp").forward(request, response);
        }

    }
}
