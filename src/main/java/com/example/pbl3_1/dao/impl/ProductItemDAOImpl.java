package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.ProductItemDAO;
import com.example.pbl3_1.entity.ProductItem;
import com.example.pbl3_1.mapper.ProductItemMapper;

import java.util.List;

public class ProductItemDAOImpl implements ProductItemDAO {
    GenericDAO<ProductItem> genericDAO = new AbstractDAOImpl<>();
    @Override
    public ProductItem getProductItemByVariations(Long v1, Long v2) {
        String sql = "SELECT * FROM product_item WHERE variation1 = ? AND variation2 = ?";
        List<ProductItem> productItems = genericDAO.query(sql, new ProductItemMapper(), v1, v2);
        return !productItems.isEmpty() ? productItems.get(0) : null;
    }

    @Override
    public ProductItem getProductItemByVariation(Long v) {
        String sql = "SELECT * FROM product_item WHERE ((variation1 = ? AND variation2 IS NULL) OR (variation2 = ? AND variation1 IS NULL))" ;
        List<ProductItem> productItems = genericDAO.query(sql, new ProductItemMapper(), v, v);
        return !productItems.isEmpty() ? productItems.get(0) : null;
    }
}
