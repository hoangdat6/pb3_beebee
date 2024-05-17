package com.example.pbl3_1.controller.filter;

import com.example.pbl3_1.Util.SessionUtil;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
@WebFilter(urlPatterns = {"/usersetting/*", "/cart/*", "/product/*", "/resetpass/*", "/shop/*", "/seller/*"})
public class AuthorizationFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        // Kiểm tra xem người dùng đã đăng nhập chưa
        boolean isLoggedIn = isUserLoggedIn(request);
        String requestURI = request.getRequestURI();

        if (isLoggedIn) {
            // Nếu đã đăng nhập, cho phép yêu cầu đi tiếp tới Servlet hoặc tài nguyên khác
            filterChain.doFilter(request, response);
        } else {
            String queryString = request.getQueryString();
            // Nếu chưa đăng nhập, lưu trữ URL của trang đang yêu cầu vào session
            SessionUtil.getInstance().putValue(request, "redirect", requestURI + (queryString == null ? "" : "?" + queryString));
            // Chuyển hướng đến trang đăng nhập
            response.sendRedirect("/PBL3_1_war_exploded/Login.jsp");
        }
    }

    private boolean isUserLoggedIn(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        return session != null && session.getAttribute("USERMODEL") != null;
    }
}
