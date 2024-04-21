package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.entity.Seller;

import java.util.Optional;

public interface SellerDAO {
    SellerDTO getShopById(Long id);
}
