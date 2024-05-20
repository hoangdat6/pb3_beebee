package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.admin.UserStatisticDTO;
import com.example.pbl3_1.dao.UserManageDAO;

import java.util.ArrayList;
import java.util.List;

public class UserManageDAOImpl implements UserManageDAO {

    @Override
    public List<UserStatisticDTO> getAllCustomer() {
        return new ArrayList<UserStatisticDTO>();
    }

    @Override
    public List<UserStatisticDTO> getAllSeller() {
        return new ArrayList<UserStatisticDTO>();
    }
}
