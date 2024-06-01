package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.admin.ShopStatisticDTO;
import com.example.pbl3_1.controller.dto.admin.UserStatisticDTO;

import java.util.List;

public interface UserManageService {
    public List<UserStatisticDTO> getAllCustomer();
    public List<UserStatisticDTO> getAllSeller();
    public void lockCustomerByID(int UserId);
    public void unlockCustomerByID(int UserId);
    public void lockSellerByID(int UserId);
    public void unlockSellerByID(int UserId);

    List<UserStatisticDTO> searchCustomers(String userSearch, Short status);

    UserStatisticDTO getCustomerById(Long id);

    ShopStatisticDTO getShopById(Long id);

    //Boolean to check unlock or lock, if unlock return true, if lock return false
    boolean lockAccount(Long lockID);

    boolean lockShop(Long lockShopID);

    List<UserStatisticDTO> searchSeller(String sellerSearch, Short status);

    UserStatisticDTO getCustomerByShopId(Long id);

    ShopStatisticDTO getShopByShopId(Long id);
}
