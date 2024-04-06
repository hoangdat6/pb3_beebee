package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.ProductItem;

import java.util.List;

public interface ProductItemService {
    public Long addProductItems(List<ProductItem> productItems);
    ProductItem getProductItemByVariations(String v1, String v2);

}
