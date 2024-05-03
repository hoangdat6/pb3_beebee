package com.example.pbl3_1.dao;

public interface SellerFollowDAO {
    void removeFollow(Long sellerId, Long userId);
    void addFollow(Long sellerId, Long userId);
}
