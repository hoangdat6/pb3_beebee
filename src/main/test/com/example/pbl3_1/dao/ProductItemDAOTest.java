package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.ProductItemDAOImpl;
import com.example.pbl3_1.entity.ProductItem;
import org.junit.Test;

import java.util.List;
import java.util.Map;

public class ProductItemDAOTest {
    @Test
    public void testGetProductItemByVariations() {
        ProductItemDAO productItemDAO = new ProductItemDAOImpl();
//        ProductItem productItem = productItemDAO.getProductItemByVariations(7L, 11L);
        List<String> imgPaths = productItemDAO.getImgPathByProductId(2L);


        imgPaths.forEach(System.out::println);
    }

    @Test
    public void testGetMaxAndMinPriceByProductId() {
        ProductItemDAO productItemDAO = new ProductItemDAOImpl();
        Map.Entry<Float, Float> result = productItemDAO.getMaxAndMinPriceByProductId(2L);
        System.out.println(result.getKey());
        System.out.println(result.getValue());
    }
}
