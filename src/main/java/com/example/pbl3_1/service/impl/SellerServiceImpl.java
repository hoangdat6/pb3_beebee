package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.SellerDAO;
import com.example.pbl3_1.dao.impl.SellerDAOImpl;
import com.example.pbl3_1.service.SellerService;

public class SellerServiceImpl implements SellerService {
    private final SellerDAO sellerDAO = new SellerDAOImpl();
    @Override
    public Object getShopById(Long id) {
        return sellerDAO.getShopById(id);
    }
}
