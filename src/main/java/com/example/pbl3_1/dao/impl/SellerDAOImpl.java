package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.dao.SellerDAO;
import com.example.pbl3_1.entity.Seller;

import java.util.Optional;

public class SellerDAOImpl implements SellerDAO {
    @Override
    public SellerDTO getShopById(Long id) {
        String sql = "SELECT  s.id, s.avatar, s.shop_name, s.views, s.followers FROM sellers " +
                "JOIN " +
                "s WHERE id = ?";
        return null;
    }
}
