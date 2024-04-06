package com.example.pbl3_1.service;

import com.example.pbl3_1.dao.ProductItemDAO;
import com.example.pbl3_1.dao.ShoppingCartDAO;
import com.example.pbl3_1.dao.impl.ProductItemDAOImpl;
import com.example.pbl3_1.dao.impl.ShoppingCartDAOImpl;
import com.example.pbl3_1.entity.ProductItem;

import java.util.List;
import java.util.Objects;

public class ProductItemServiceImpl implements ProductItemService {
    private final ProductItemDAO productItemDAO = new ProductItemDAOImpl();

    @Override
    public Object addProductItems(List<ProductItem> productItems) {
        return productItemDAO.addProductItems(productItems);
    }

    @Override
    public ProductItem getProductItemByVariations(String  v1, String v2) {
        if(!Objects.equals(v1, "")){
            if(!Objects.equals(v2, "")){
                return productItemDAO.getProductItemByVariations(Long.parseLong(v1), Long.parseLong(v2));
            }else {
                return productItemDAO.getProductItemByVariations(Long.parseLong(v1), null);
            }
        }else {
            return productItemDAO.getProductItemByVariations(null, null);
        }
    }

}
