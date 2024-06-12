package com.example.pbl3_1.controller;

import com.example.pbl3_1.controller.dto.product.SellerOrderProductDTO;
import com.example.pbl3_1.controller.dto.product.UserOrderProductDTO;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.impl.ProductServiceImpl;
import com.example.pbl3_1.service.impl.SellerServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
@WebServlet(name = "SellerOrderController", urlPatterns = {"/seller/product/order", "/seller/product/order/api", "/seller/product/order/confirm", "/seller/product/order/delivered"})
public class SellerOrderController extends HttpServlet {
    private final ProductService productService = new ProductServiceImpl();
    private final SellerService sellerService = new SellerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
//        ShowOrder(request, response);
        String path = request.getServletPath();
        switch (path) {
            case "/seller/product/order":
                request.getRequestDispatcher("Order.jsp").forward(request, response);
                break;
            case "/seller/product/order/api":
                ShowOrder(request, response);
                break;
            case "/seller/product/order/confirm":
                ConfirmOrder(request, response);
                ShowOrder(request, response);
                break;
            case "/seller/product/order/delivered":
                DeliveredOrder(request, response);
                ShowOrder(request, response);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getServletPath();
//        if(action != null && action.equals("/usersetting/order"))
//        {
//            response.sendRedirect(request.getContextPath() + "/usersetting/order");
//        }
    }
    public void ShowOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = (User) request.getSession().getAttribute("USERMODEL");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
        }else{
            Long IDseller = sellerService.getIdByUserId(user.getId());
            int status = request.getParameter("status") == null ? 0 : Integer.parseInt(request.getParameter("status"));
            List<SellerOrderProductDTO> data = productService.getSellerOrderProduct(IDseller, status);
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                objectMapper.writeValue(response.getOutputStream(), data);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    public void ConfirmOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = (User) request.getSession().getAttribute("USERMODEL");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
        }else{
            String id = request.getParameter("id");
            System.out.println("Cancel Order: " + id);
            productService.changeOrder(id, 4);
        }
    }
    public void DeliveredOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = (User) request.getSession().getAttribute("USERMODEL");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
        }else{
            String id = request.getParameter("id");
            System.out.println("Received Order: " + id);
            productService.changeOrder(id, 3);
        }
    }
}
