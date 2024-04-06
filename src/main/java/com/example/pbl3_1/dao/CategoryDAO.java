package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Category;

import java.util.List;

public interface CategoryDAO {
    public Integer save(Category category);
    public Integer update(Category category);
    public void deleteById(Long id);
    public Category findById(int id);
    public List<Category> findAll();
}
