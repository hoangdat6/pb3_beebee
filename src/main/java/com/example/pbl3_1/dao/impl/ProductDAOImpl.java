package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.ProductDAO;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.mapper.ProductMapper;

import java.util.List;

public class ProductDAOImpl implements ProductDAO {
    private AbstractDAOImpl<Product> abstractDAO = new AbstractDAOImpl<>();
    @Override
    public Long save(Product product) {
        String sql = "insert into products (name, description, product_img_path, category_id, seller_id, created_at, discount) values (?, ?, ?, ?, ?, ?)";
        return abstractDAO.save(sql, product.getName(), product.getDescription(), product.getProductImgPath(), product.getCategoryId(), product.getSellerId(), product.getCreatedAt(), product.getDiscount());
    }

    @Override
    public void update(Product product) {

    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public Product getProductById(Long id) {
        String sql = "select * from products where id = ?";
        List<Product> products = abstractDAO.query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public List<Product> getProducts() {
        String sql = "select * from products";
        return abstractDAO.query(sql, new ProductMapper());
    }
}
