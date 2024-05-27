package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.admin.ShopStatisticDTO;
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

    public List<UserStatisticDTO> searchCustomers(String userSearch){
        List<UserStatisticDTO> result = new ArrayList<>();
        result = userManage.searchCustomers(userSearch);
        return result;
    }

    @Override
    public UserStatisticDTO getCustomerById(Long id) {
        return userManage.getCustomerById(id);
    }

    @Override
    public ShopStatisticDTO getShopById(Long id) {
        return userManage.getShopById(id);
    }

    //unlock return true, lock return false
    @Override
    public boolean lockAccount(Long lockID) {
        return userManage.lockAccount(lockID);
    }

    @Override
    public boolean lockShop(Long lockShopID) {
        return userManage.lockShop(lockShopID);
    }

    @Override
    public List<UserStatisticDTO> searchSeller(String sellerSearch) {
        return userManage.searchSeller(sellerSearch);
    }

    @Override
    public UserStatisticDTO getCustomerByShopId(Long id) {
        return userManage.getCustomerByShopId(id);
    }

    @Override
    public ShopStatisticDTO getShopByShopId(Long id) {
        return userManage.getShopByShopId(id);
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
