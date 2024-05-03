package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.ShoppingCartItem;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.CartItemService;
import com.example.pbl3_1.service.impl.CartItemServiceImpl;
import com.example.pbl3_1.service.ShoppingCartItemService;
import com.example.pbl3_1.service.ShoppingCartItemServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "cartApi", urlPatterns = {"/api/cart", "/api/add-to-cart", "/api/remove","/api/update"})
public class ShoppingCartApi extends HttpServlet {
    private final CartItemService cartItemService = new CartItemServiceImpl();
    public final ShoppingCartItemService shoppingCartItemService= new ShoppingCartItemServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // get user from session
        User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");

        // if the user is logged in then get the data form view
        String variation1 = request.getParameter("variation1");
        String variation2 = request.getParameter("variation2");
        String quantity = request.getParameter("quantity");

        // Add to cart logic here
        Object id = cartItemService.saveToCart(variation1, variation2, Integer.parseInt(quantity), user.getId());

        ObjectMapper objectMapper = new ObjectMapper();
        response.setContentType("application/json");
        String json;
        if(id != null){
             json = "{\"status\" : \"200\"}";
        }else {
             json = "{\"status\" : \"500\"}";
        }
        objectMapper.writeValue(response.getOutputStream(), json);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String urlPattern = request.getServletPath();

        switch (urlPattern) {
            case "/api/remove":
                String idCartItem = request.getParameter("idCartItem");
                shoppingCartItemService.deleteById(Long.parseLong(idCartItem));
                System.out.println(request.getParameter("number"));
                response.setContentType("application/json");
                response.getWriter().write("{\"status\": \"200\"}");
                break;
            case  "/api/update":
                Long item = Long.parseLong(request.getParameter("idCartItem"));
                Integer quantity = Integer.parseInt(request.getParameter("quantity"));
                String action = String.valueOf(request.getParameter("action"));
                if (Objects.equals(action, "increase")) quantity++;
                else if (Objects.equals(action, "decrease")) quantity--;
                ShoppingCartItem cartItem =  shoppingCartItemService.findById(item);
                cartItem.setQuantity(quantity);
                if(quantity==0) shoppingCartItemService.deleteById(item);
                else shoppingCartItemService.update(cartItem);
                response.setContentType("application/json");
                response.getWriter().write("{\"status\": \"200\"}");
                break;
        }
    }

}
