package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.ProductItemDAO;
import com.example.pbl3_1.dao.ShoppingCartDAO;
import com.example.pbl3_1.dao.impl.ProductItemDAOImpl;
import com.example.pbl3_1.dao.impl.ShoppingCartDAOImpl;
import com.example.pbl3_1.entity.OrderDetail;
import com.example.pbl3_1.entity.ProductItem;
import com.example.pbl3_1.service.ProductItemService;

import java.sql.SQLException;
import java.util.List;
import java.util.Objects;

public class ProductItemServiceImpl implements ProductItemService {
    private final ProductItemDAO productItemDAO = new ProductItemDAOImpl();

    @Override
    public Object addProductItems(List<ProductItem> productItems) {
        return productItemDAO.addProductItems(productItems);
    }

    @Override
    public ProductItem getProductItemByVariations(String productId, String  v1, String v2) {
        if(!Objects.equals(v1, "")){
            if(!Objects.equals(v2, "")){
                return productItemDAO.getProductItemByVariations(Long.parseLong(productId),Long.parseLong(v1), Long.parseLong(v2));
            }else {
                return productItemDAO.getProductItemByVariations(Long.parseLong(productId),null, Long.parseLong(v1));
            }
        }else {
            return productItemDAO.getProductItemByVariations(Long.parseLong(productId), null, null);
        }
    }

    @Override
    public void updateStock(List<OrderDetail> orderDetails) throws SQLException {
        productItemDAO.updateStock(orderDetails);
    }

    @Override
    public void updateStocks(List<List<OrderDetail>> lists) throws SQLException {
        for(List<OrderDetail> orderDetails : lists){
            updateStock(orderDetails);
        }
    }
}
