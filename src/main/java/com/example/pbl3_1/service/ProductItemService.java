package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.OrderDetail;
import com.example.pbl3_1.entity.ProductItem;

import java.sql.SQLException;
import java.util.List;

public interface ProductItemService {
    Object addProductItems(List<ProductItem> productItems);
    ProductItem getProductItemByVariations(String productId, String v1, String v2);

    void updateStock(List<OrderDetail> orderDetails) throws SQLException;

    void updateStocks(List<List<OrderDetail>> lists) throws SQLException;
}
