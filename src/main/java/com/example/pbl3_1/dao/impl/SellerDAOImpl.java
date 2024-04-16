package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.SellerDAO;
import com.example.pbl3_1.entity.Seller;
import com.example.pbl3_1.mapper.SellerMapper;

import java.util.List;

public class SellerDAOImpl implements SellerDAO {
    private AbstractDAOImpl<Seller> abstractDAO = new AbstractDAOImpl<>();
    @Override
    public Seller findBySellerId(Long id) {
        String sql = "select * from sellers where id = ? ";
        List<Seller> list = abstractDAO.query(sql, new SellerMapper(),id);
        return (list.isEmpty() ? null : list.get(0));
    }

}
