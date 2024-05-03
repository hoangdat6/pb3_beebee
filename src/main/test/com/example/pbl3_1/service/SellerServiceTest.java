package com.example.pbl3_1.service;

import com.example.pbl3_1.service.impl.SellerServiceImpl;
import org.junit.Test;

public class SellerServiceTest {
    @Test
    public void testGetShopById() {
        SellerService sellerService = new SellerServiceImpl();
        System.out.println(sellerService.getShopById(2L, 3L));
    }
}
