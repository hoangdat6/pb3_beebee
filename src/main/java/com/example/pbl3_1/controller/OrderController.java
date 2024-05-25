package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.AddressUtils;
import com.example.pbl3_1.controller.dto.cart.CheckOutInfoDTO;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.OrderService;
import com.example.pbl3_1.service.impl.AddressServiceImpl;
import com.example.pbl3_1.service.impl.OrderServiceImpl;
import com.example.pbl3_1.service.impl.ShoppingCartItemServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "orderController", urlPatterns = {"/check-out", "/order-detail", "/order-history"})
public class OrderController extends HttpServlet {
    private final OrderService orderService = new OrderServiceImpl();

    private final AddressService addressService = new AddressServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/check-out":
                showCheckOutPage(request, response);
                break;
            case "/order-detail":
                request.getRequestDispatcher("/WEB-INF/views/order/order-detail.jsp").forward(request, response);
                break;
            case "/order-history":
                request.getRequestDispatcher("/WEB-INF/views/order/order-history.jsp").forward(request, response);
                break;
        }
    }

    public void showCheckOutPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Map<String, String>> orderDetail = (List<Map<String, String>>) request.getSession().getAttribute("orderDetail");

        User user = (User) request.getSession().getAttribute("USERMODEL");

        List<CheckOutInfoDTO> checkOutInfoDTOs = new ArrayList<>();

        for (Map<String, String> map : orderDetail) {
            Boolean isLocked = Boolean.parseBoolean(map.get("isLocked"));

            CheckOutInfoDTO checkOutInfoDTO = CheckOutInfoDTO.builder()
                    .shopId(Long.parseLong(map.get("shopId")))
                    .shopName(map.get("shopName"))
                    .shopImg(map.get("shopImg"))
                    .build();

            checkOutInfoDTOs.add(checkOutInfoDTO);
        }



        Address address = addressService.getDefaultAddressByUserId(user.getId());
        if(address == null){
            response.sendRedirect("usersetting/address");
            return;
        }

        String appPath = request.getServletContext().getRealPath("/");
        String filePath = appPath + "usersetting/data.json";
        AddressUtils addressUtils = new AddressUtils(filePath);

        address.setWard(addressUtils.getWardName(address.getProvince(),address.getDistrict(),address.getWard()));
        address.setDistrict(addressUtils.getDistrictName(address.getProvince(),address.getDistrict()));
        address.setProvince(addressUtils.getCityName(address.getProvince()));

        request.setAttribute("address", address);
//        request.setAttribute("productForCheckOuts", productForCheckOuts);
        request.getRequestDispatcher("CheckOut.jsp").forward(request, response);
    }
}
