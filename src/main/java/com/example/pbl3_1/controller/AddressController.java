package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.AddressUtils;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.address.AddressDTO;
import com.example.pbl3_1.controller.user_login.CheckLoggedUser;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.impl.AddressServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

@WebServlet(name ="address", urlPatterns = "/usersetting/address")
public class AddressController extends HttpServlet {
    public final AddressService addressService = new AddressServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        if (CheckLoggedUser.checkLoggedUser(request, response, "/usersetting/address")) {
            User userLogin = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
            List<AddressDTO> list = addressService.getByIdUser(userLogin.getId());
            String appPath = request.getServletContext().getRealPath("/");
            String filePath = appPath + "usersetting/data.json";
            AddressUtils addressUtils = new AddressUtils(filePath);
            for (AddressDTO item : list){
                item.setWard_value(addressUtils.getWardName(item.getProvince(),item.getDistrict(),item.getWard()));
                item.setDistrict_value(addressUtils.getDistrictName(item.getProvince(),item.getDistrict()));
                item.setProvince_value(addressUtils.getCityName(item.getProvince()));
            }
            request.setAttribute("address", list);
            request.getRequestDispatcher("/usersetting/Location.jsp").forward(request, response);
        }
    }

}