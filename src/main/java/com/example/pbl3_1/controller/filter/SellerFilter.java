package com.example.pbl3_1.controller.filter;

import com.example.pbl3_1.controller.user_login.CheckLoggedUser;
import com.example.pbl3_1.controller.user_login.CheckRegisteredSeller;
import com.example.pbl3_1.entity.ERole;
import com.example.pbl3_1.entity.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(urlPatterns = {"/seller/account/register"})
public class SellerFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        User user = (User) request.getSession().getAttribute("USERMODEL");

        if(user == null) {
            response.sendRedirect(request.getContextPath() + "/login?message=login_required&alert=danger");
        }else {
            String url = request.getRequestURI();
            switch (user.getRole()) {
                case CUSTOMER:
                        chain.doFilter(request, response);
                    break;
                case SELLER:
                    if(url.contains("/seller/account/register")) {
                        response.sendRedirect(request.getContextPath() + "/seller/product/save");
                    }else {
                        chain.doFilter(request, response);
                    }
                    break;
            }
        }
    }
}