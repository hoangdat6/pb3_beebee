package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.SellerDAOImpl;
import org.junit.Test;

public class SellerDAOTest {
    @Test
    public void testGetShopById() {
        SellerDAO sellerDAO = new SellerDAOImpl();
        System.out.println(sellerDAO.getShopById(2L));
    }
}
