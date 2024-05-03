package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.Variation;
import com.example.pbl3_1.service.impl.VariationServiceImpl;
import org.junit.Assert;
import org.junit.Test;

public class VariationServiceTest {
    @Test
    public void testAddVariation() {
        VariationService variationService = new VariationServiceImpl();

        Variation variation = Variation.builder().productId(2L).name("Test").build();

        Long id = variationService.addVariation(variation);

        Assert.assertNotNull(id);
    }
}
