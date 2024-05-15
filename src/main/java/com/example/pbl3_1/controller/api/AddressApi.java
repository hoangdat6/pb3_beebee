package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.impl.AddressServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(name = "addressApi", urlPatterns = {"/api/address"})
public class AddressApi extends HttpServlet {
    public final AddressService addressService = new AddressServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        Address address = new Address(request.getParameter("fullname"),request.getParameter("phone"),request.getParameter("detail"),request.getParameter("ward"),request.getParameter("district"),request.getParameter("city"));
        addressService.add(address,user.getId());
    }
}
