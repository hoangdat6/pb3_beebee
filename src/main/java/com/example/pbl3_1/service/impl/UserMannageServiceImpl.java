package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.admin.UserStatisticDTO;
import com.example.pbl3_1.dao.UserManageDAO;
import com.example.pbl3_1.service.UserManageService;

import java.util.ArrayList;
import java.util.List;

public class UserMannageServiceImpl implements UserManageService {
    UserManageDAO userManage = new UserManageDAOImpl();
    public List<UserStatisticDTO> getAllCustomer(){
        List<UserStatisticDTO> result = new ArrayList<>();
        result = userManage.getAllCustomer();
        return result;
    }
    public List<UserStatisticDTO> getAllSeller(){
        List<UserStatisticDTO> result = new ArrayList<>();
        result = userManage.getAllSeller();
        return result;
    }
    public void lockCustomerByID(int UserId){

    }
    public void unlockCustomerByID(int UserId){

    }
    public void lockSellerByID(int UserId){

    }
    public void unlockSellerByID(int UserId){

    }
}
