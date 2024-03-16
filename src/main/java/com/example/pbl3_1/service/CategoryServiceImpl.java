package com.example.pbl3_1.service;

import com.example.pbl3_1.dao.CategoryDAO;
import com.example.pbl3_1.dao.impl.CategoryDAOImpl;
import com.example.pbl3_1.entity.Category;

import java.util.List;

public class CategoryServiceImpl implements CategoryService{
    CategoryDAO categoryDAO = new CategoryDAOImpl();
    @Override
    public List<Category> getCategories() {
        return categoryDAO.findAll();
    }
}
