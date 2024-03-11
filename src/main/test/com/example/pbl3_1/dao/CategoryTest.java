package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.CategoryDAOImpl;
import com.example.pbl3_1.entity.Category;
import org.junit.Test;

public class CategoryTest {
    @Test
    public void testSave() {
        CategoryDAO categoryDAO = new CategoryDAOImpl();
        Category category = new Category();
        category.setName("Test");
        categoryDAO.save(category);
    }
}
