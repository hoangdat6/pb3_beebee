package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.VariationOptionDAOImpl;
import org.junit.Test;

public class VariationOptionDAOTest {
    @Test
    public void testGetVariationOptionsByVariationId() {
        VariationOptionDAO variationOptionDAO = new VariationOptionDAOImpl();
        System.out.println(variationOptionDAO.getVariationOptionsByVariationId(3L));
    }
}
