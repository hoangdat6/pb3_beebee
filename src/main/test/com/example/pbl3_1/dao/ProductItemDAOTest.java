package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.ProductItemDAOImpl;
import com.example.pbl3_1.entity.ProductItem;
import org.junit.Test;

public class ProductItemDAOTest {
    @Test
    public void testGetProductItemByVariations() {
        ProductItemDAO productItemDAO = new ProductItemDAOImpl();
//        ProductItem productItem = productItemDAO.getProductItemByVariations(7L, 11L);
        ProductItem productItem1 = productItemDAO.getProductItemByVariation(7L);
        System.out.println(productItem1);
    }
}
