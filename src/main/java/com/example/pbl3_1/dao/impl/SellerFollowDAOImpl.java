package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.SellerFollowDAO;

public class SellerFollowDAOImpl implements SellerFollowDAO {
    private final GenericDAO genericDAO = new AbstractDAOImpl();
    @Override
    public void removeFollow(Long sellerId, Long userId) {
        String sql = "DELETE FROM seller_followers where seller_id = ? AND user_id = ?";
        genericDAO.delete(sql, sellerId, userId);
    }

    @Override
    public void addFollow(Long sellerId, Long userId) {
        String sql = "insert into seller_followers (seller_id, user_id) values (?, ?);";
        genericDAO.save(sql, sellerId, userId);
    }
}
