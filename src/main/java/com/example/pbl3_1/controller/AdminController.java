package com.example.pbl3_1.controller;

import com.example.pbl3_1.service.UserManageService;
import com.example.pbl3_1.service.impl.UserMannageServiceImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(name = "AdminController", urlPatterns = "/admin/*")
public class AdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getPathInfo();

        if (action == null) {
            action = "/index";
        }

        switch (action) {
            case "/usermanage":
                UserManageService ums = new UserMannageServiceImpl();
                // code to handle user management
                break;
            case "/productmanage":
                // code to handle product management
                break;
            default:
                // code to handle default acton
                RequestDispatcher dispatcher = req.getRequestDispatcher("");
                dispatcher.forward(req, resp);
                break;
        }
    }
}
