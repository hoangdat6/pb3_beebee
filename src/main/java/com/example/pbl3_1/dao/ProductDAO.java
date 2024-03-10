package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.Variation;
import com.example.pbl3_1.entity.VariationOption;

import java.util.List;

public interface ProductDAO {
    public Long addProduct(Product product);
    public void updateById(Product product);
    public void deleteById(int id);
    public Product getProductById(Long id);
    public List<Product> getProducts();
//    public List<Product> getProductsByCategory(int categoryId);
//    public List<Product> getProductsByCategory(Category category);
//    public List<Product> getProductsByVariationOption(int variationOptionId);
//    public List<Product> getProductsByVariationOption(VariationOption variationOption);
//    public List<Product> getProductsByVariation(int variationId);
//    public List<Product> getProductsByVariation(Variation variation);
}
