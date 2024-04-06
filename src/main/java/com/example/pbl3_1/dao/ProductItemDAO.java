package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.ProductItem;

import java.util.List;
import java.util.Map;

public interface ProductItemDAO {
    public ProductItem getProductItemByVariations(Long v1, Long v2);
    public List<String> getImgPathByProductId(Long id);
    public Map.Entry<Float, Float> getMaxAndMinPriceByProductId(Long id);
    public Long getProductItemIdByVariations(Long v1, Long v2);
    public int getQuantityByProductId(Long id);
    Long addProductItems(List<ProductItem> productItems);
}
