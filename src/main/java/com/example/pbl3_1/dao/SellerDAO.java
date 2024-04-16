package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Seller;

public interface SellerDAO {
    public Seller findBySellerId(Long id);
}
