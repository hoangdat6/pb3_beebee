package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.admin.UserStatisticDTO;

import java.util.List;

public interface UserManageDAO {
    List<UserStatisticDTO> getAllCustomer();

    List<UserStatisticDTO> getAllSeller();
}
