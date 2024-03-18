package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.CategoryDAO;
import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.mapper.CategoryMapper;
import jakarta.inject.Inject;
import lombok.AllArgsConstructor;

import java.util.List;

@AllArgsConstructor
public class CategoryDAOImpl implements CategoryDAO {

    public GenericDAO<Category> abstractDAO = new AbstractDAOImpl<>();

    public CategoryDAOImpl(){

    }
    @Override
    public Integer save(Category category) {
        String sql = "INSERT INTO categories(name) VALUES(?)";
        return Math.toIntExact(abstractDAO.save(sql, category.getName()));
    }

    @Override
    public Integer updateById(Category category) {
        return null;
    }

    @Override
    public void deleteById(Category category) {

    }

    @Override
    public Category findById(int id) {
        String sql = "SELECT * FROM categories WHERE id = ?";
        List<Category> categories = abstractDAO.query(sql, new CategoryMapper(), id);
        return (!categories.isEmpty()) ? categories.get(0) : null;
    }

    @Override
    public List<Category> findAll() {
        String sql = "SELECT id, name, img_path FROM categories";
        return abstractDAO.query(sql, new CategoryMapper());
    }

}
