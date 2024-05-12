package com.example.pbl3_1.controller.filter;

import com.example.pbl3_1.entity.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(urlPatterns = {"/login", "/register"})
public class LoginRegisterFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        User user = (User) request.getSession().getAttribute("USERMODEL");

        if(user != null) {
            response.sendRedirect(request.getContextPath() + "/home");
        } else {
            chain.doFilter(request, response);
        }
    }
}
