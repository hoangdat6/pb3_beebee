package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.CategoryDAOImpl;
import com.example.pbl3_1.entity.Category;
import org.junit.Test;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.junit.Assert.assertTrue;

public class CategoryTest {
    @Test
    public void testSave() {
        CategoryDAO categoryDAO = new CategoryDAOImpl();
        Category category = new Category();
        category.setName("Test");
        categoryDAO.save(category);
    }

    @Test
    public void generateOrderId() {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
        String formattedDateTime = now.format(formatter);
        String randomNumber = String.format("%04d", new Random().nextInt(10000)); // Số ngẫu nhiên 4 chữ số
        System.out.println("ORD-" + formattedDateTime + "-" + "userId" + "-" + randomNumber);
    }
}
