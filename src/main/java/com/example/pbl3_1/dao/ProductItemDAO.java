package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.ProductItem;

import java.util.List;
import java.util.Map;

public interface ProductItemDAO {
    ProductItem getProductItemByVariations(Long v1, Long v2);
    List<String> getImgPathByProductId(Long id);
    Map.Entry<Float, Float> getMaxAndMinPriceByProductId(Long id);
    Long getProductItemIdByVariations(Long v1, Long v2);
    int getQuantityByProductId(Long id);
    Object addProductItems(List<ProductItem> productItems);
}
