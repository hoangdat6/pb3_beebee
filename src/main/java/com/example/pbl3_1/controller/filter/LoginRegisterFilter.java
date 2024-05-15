package com.example.pbl3_1.controller.filter;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Objects;

@WebFilter(urlPatterns = {"/login", "/register"})
public class LoginRegisterFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        User user = (User) request.getSession().getAttribute("USERMODEL");

        if(user != null) {
            String redirect = (String) SessionUtil.getInstance().getValue(request, "redirect");
            response.sendRedirect(request.getContextPath() + Objects.requireNonNullElse(redirect, "/home"));
        } else {
            chain.doFilter(request, response);
        }
    }
}
