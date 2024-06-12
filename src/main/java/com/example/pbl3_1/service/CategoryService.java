package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getCategories();
    int getCategoryByName(String name);
}
