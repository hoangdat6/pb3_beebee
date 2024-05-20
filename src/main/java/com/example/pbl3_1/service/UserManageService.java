package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.admin.UserStatisticDTO;

import java.util.List;

public interface UserManageService {
    public List<UserStatisticDTO> getAllCustomer();
    public List<UserStatisticDTO> getAllSeller();
    public void lockCustomerByID(int UserId);
    public void unlockCustomerByID(int UserId);
    public void lockSellerByID(int UserId);
    public void unlockSellerByID(int UserId);
}
