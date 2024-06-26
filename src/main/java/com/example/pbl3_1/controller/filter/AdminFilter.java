package com.example.pbl3_1.controller.filter;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(urlPatterns = {"/admin/*"})
public class AdminFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        User user = (User) request.getSession().getAttribute("USERMODEL");
        String requestURI = request.getRequestURI();

        if(user == null) {
            String queryString = request.getQueryString();
            SessionUtil.getInstance().putValue(request, "redirect", requestURI + (queryString == null ? "" : "?" + queryString));
            response.sendRedirect(request.getContextPath() + "/login?message=login_required&alert=danger");
        }else {
            String url = request.getRequestURI();
            switch (user.getRole()) {
                case ADMIN:
                    chain.doFilter(request, response);
                    break;
                default:
                    response.sendRedirect(request.getContextPath() + "/error-401");
                    break;

            }
        }
    }
}
