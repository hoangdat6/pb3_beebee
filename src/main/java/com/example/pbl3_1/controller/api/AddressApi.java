package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.entity.UserAddress;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.UserAddressService;
import com.example.pbl3_1.service.impl.AddressServiceImpl;
import com.example.pbl3_1.service.impl.UserAddressServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(name = "addressApi", urlPatterns = {"/api/address","/api/remove-address","/api/update-address","/api/set-default"})
public class AddressApi extends HttpServlet {
    public final AddressService addressService = new AddressServiceImpl();
    public final UserAddressService userAddressService = new UserAddressServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        Address address = new Address(request.getParameter("fullname"),request.getParameter("phone"),request.getParameter("detail"),request.getParameter("ward"),request.getParameter("district"),request.getParameter("city"));
        Long idAddress= addressService.addAddress(address);
        UserAddress userAddress = new UserAddress(user.getId(),idAddress,Boolean.parseBoolean(request.getParameter("is_default")));
        userAddressService.addAddress(userAddress);
        if (Boolean.parseBoolean(request.getParameter("is_default"))) {
            userAddressService.setDefault(user.getId(), idAddress,true);
        }
        response.setContentType("application/json");
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            objectMapper.writeValue(response.getOutputStream(),idAddress.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String urlPattern = request.getServletPath();
        User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        switch (urlPattern){
        case "/api/remove-address":
            Long idAddress =Long.parseLong(request.getParameter("addressId"));
            userAddressService.delete(user.getId(),idAddress);
            addressService.delete(idAddress);
            break;
        case "/api/update-address" :
                Address address = new Address(Long.parseLong(request.getParameter("addressId")),request.getParameter("name"),request.getParameter("phone"),request.getParameter("detail"),request.getParameter("ward"),request.getParameter("district"),request.getParameter("city"));
                addressService.update(address);
                boolean isDefault = Boolean.parseBoolean(request.getParameter("is_default"));
                    userAddressService.setDefault(user.getId(),Long.parseLong(request.getParameter("addressId")),isDefault);
                response.setContentType("application/json");
                break;
            case "/api/set-default":
                userAddressService.setDefault(user.getId(),Long.parseLong(request.getParameter("addressId")),true);
            }
    }
}
