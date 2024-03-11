package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Category;

import java.util.List;

public interface CategoryDAO {
    public Integer save(Category category);
    public Integer updateById(Category category);
    public void deleteById(Category category);
    public Category findById(int id);
    public List<Category> findAll();
}
