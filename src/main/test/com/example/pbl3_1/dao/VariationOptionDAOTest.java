package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.VariationOptionDAOImpl;
import org.junit.Test;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class VariationOptionDAOTest {
    @Test
    public void testGetVariationOptionsByVariationId() {
        VariationOptionDAO variationOptionDAO = new VariationOptionDAOImpl();
        System.out.println(variationOptionDAO.getVariationOptionsByVariationId(3L));
    }

    @Test
    public void testGetVariationOptionByProductItemId() {
        VariationOptionDAO variationOptionDAO = new VariationOptionDAOImpl();
        System.out.println(variationOptionDAO.getVariationDTOByProductItemId(51L));
    }
    @Test
    public void test1() {
        try {
            String originalUrl = "/PBL3_1_war_exploded/product?n=Quần-Nỉ-Dài-Relax-Pants-ODIN-CLUB,-Quần-nỉ-dài-ống-suông-ODIN,-Local-Brand-ODIN-CLUB&id=2";
            String encodedUrl = URLEncoder.encode(originalUrl, "UTF-8");
            System.out.println(encodedUrl);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}
