package com.example.pbl3_1.controller;

import com.example.pbl3_1.controller.dto.product.UserOrderProductDTO;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.impl.ProductServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

@WebServlet(name = "UserOrderController", urlPatterns = {"/usersetting/order", "/usersetting/order/api", "/usersetting/order/cancel", "/usersetting/order/received"}) // "/usersetting/order/received
public class UserOrderController extends HttpServlet {
    private final ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
//        ShowOrder(request, response);
        String path = request.getServletPath();
        switch (path) {
            case "/usersetting/order":
                request.getRequestDispatcher("Order.jsp").forward(request, response);
                break;
            case "/usersetting/order/api":
                ShowOrder(request, response);
                break;
            case "/usersetting/order/cancel":
                CancelOrder(request, response);
                ShowOrder(request, response);
                break;
            case "/usersetting/order/received":
                ReceivedOrder(request, response);
                ShowOrder(request, response);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        if(action != null && action.equals("/usersetting/order"))
        {
            response.sendRedirect(request.getContextPath() + "/usersetting/order");
        }
    }
    public void ShowOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = (User) request.getSession().getAttribute("USERMODEL");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
        }else{
            int status = request.getParameter("status") == null ? 0 : Integer.parseInt(request.getParameter("status"));
            List<UserOrderProductDTO> data = productService.getUserOrderProduct(user.getId(), status);
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                objectMapper.writeValue(response.getOutputStream(), data);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    public void CancelOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = (User) request.getSession().getAttribute("USERMODEL");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
        }else{
            String id = request.getParameter("id");
            System.out.println("Cancel Order: " + id);
            productService.changeOrder(id, 6);
        }
    }
    public void ReceivedOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = (User) request.getSession().getAttribute("USERMODEL");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
        }else{
            String orderId = request.getParameter("id");
            System.out.println("Received Order: " + orderId);
            productService.changeOrder(orderId, 5);
            productService.updateSale(orderId);
        }
    }
}
