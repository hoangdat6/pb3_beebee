package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.product.UserOrderProductDTO;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.impl.ProductServiceImpl;
import org.junit.Test;

import java.util.List;

public class UserOrderTest {
    @Test
    public void test() {
        ProductService productService = new ProductServiceImpl();
        List<UserOrderProductDTO> data = productService.getUserOrderProduct(3L, 0);
        System.out.println("Product: " + data);
    }
}
