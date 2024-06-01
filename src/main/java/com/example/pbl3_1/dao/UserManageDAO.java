package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.admin.ShopStatisticDTO;
import com.example.pbl3_1.controller.dto.admin.UserStatisticDTO;

import java.util.List;

public interface UserManageDAO {
    List<UserStatisticDTO> getAllCustomer();

    List<UserStatisticDTO> getAllSeller();

    List<UserStatisticDTO> searchCustomers(String userSearch, short status);

    ShopStatisticDTO getShopById(Long id);

    UserStatisticDTO getCustomerById(Long id);

    //unlock return true, lock return false
    boolean lockAccount(Long lockID);

    boolean lockShop(Long lockShopID);

    List<UserStatisticDTO> searchSeller(String sellerSearch, Short status);

    UserStatisticDTO getCustomerByShopId(Long id);

    ShopStatisticDTO getShopByShopId(Long id);
}
