package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.ResponseEntityDTO;
import com.example.pbl3_1.entity.ShoppingCartItem;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.CartItemService;
import com.example.pbl3_1.service.impl.CartItemServiceImpl;
import com.example.pbl3_1.service.ShoppingCartItemService;
import com.example.pbl3_1.service.impl.ShoppingCartItemServiceImpl;
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
        Long productId = (Long) SessionUtil.getInstance().getValue(request, "product_id");
        String variation1 = request.getParameter("variation1");
        String variation2 = request.getParameter("variation2");
        String quantity = request.getParameter("quantity");

        // Add to cart logic here
        Object id = cartItemService.saveToCart(productId, variation1, variation2, Integer.parseInt(quantity), user.getId());

        ObjectMapper objectMapper = new ObjectMapper();
        response.setContentType("application/json");

        ResponseEntityDTO responseDTO = new ResponseEntityDTO();

        if(id != null){
            responseDTO.setCode(200);
            responseDTO.setMessage("Success");
            responseDTO.setData(Long.valueOf(id.toString()));
            SessionUtil.getInstance().putValue(request, "ORDER_CART_ITEM", id);
        }else {
            responseDTO.setCode(500);
            responseDTO.setMessage("Warning");
        }
        objectMapper.writeValue(response.getOutputStream(), responseDTO);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String urlPattern = request.getServletPath();
        System.out.println(urlPattern);
        switch (urlPattern) {
            case "/api/remove":
                String idCartItem = request.getParameter("idCartItem");
                System.out.println(idCartItem);
                shoppingCartItemService.deleteById(Long.parseLong(idCartItem));
                response.setContentType("application/json");
                response.getWriter().write("{\"status\": \"200\"}");
                break;
            case  "/api/update":
                Long cartId = Long.parseLong(request.getParameter("idCartItem"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                System.out.println(cartId + " " + quantity);
                ShoppingCartItem cartItem =  shoppingCartItemService.findById(cartId);
                cartItem.setQuantity(quantity);
                if(quantity==0) shoppingCartItemService.deleteById(cartId);
                else shoppingCartItemService.update(cartItem);
                response.setContentType("application/json");
                response.getWriter().write("{\"status\": \"200\"}");
                break;
        }
    }

}