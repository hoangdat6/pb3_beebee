package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.ProductItem;

public interface ProductItemDAO {
    public ProductItem getProductItemByVariations(Long v1, Long v2);
    public ProductItem getProductItemByVariation(Long v);
}
