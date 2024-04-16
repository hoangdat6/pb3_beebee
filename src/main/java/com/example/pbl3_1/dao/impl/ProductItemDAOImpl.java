package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.ProductItemDAO;
import com.example.pbl3_1.entity.ProductItem;
import com.example.pbl3_1.mapper.ProductItemMapper;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class ProductItemDAOImpl implements ProductItemDAO {
    GenericDAO<ProductItem> genericDAO = new AbstractDAOImpl<>();
    @Override
    public ProductItem getProductItemByVariations(Long v1, Long v2) {
        String sql = "SELECT * FROM product_item WHERE (variation1 = ? OR variation1 IS NULL) AND (variation2 = ? OR variation2 IS NULL)";
        List<ProductItem> productItems = genericDAO.query(sql, new ProductItemMapper(), v1, v2);
        return !productItems.isEmpty() ? productItems.get(0) : null;
    }

//    @Override
//    public ProductItem getProductItemByVariation(Long v) {
//        String sql = "SELECT * FROM product_item WHERE ((variation1 = ? AND variation2 IS NULL) OR (variation2 = ? AND variation1 IS NULL))" ;
//        List<ProductItem> productItems = genericDAO.query(sql, new ProductItemMapper(), v, v);
//        return !productItems.isEmpty() ? productItems.get(0) : null;
//    }

    @Override
    public List<String> getImgPathByProductId(Long id) {
        String sql = "SELECT product_img_path FROM product_item WHERE product_id = ?";
        return genericDAO.query(sql, resultSet -> {
            try {
                return resultSet.getString("product_img_path");
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return null;
        }, id);
    }

    @Override
    public Map.Entry<Float, Float> getMaxAndMinPriceByProductId(Long id) {
        String sql = "SELECT MAX(price), MIN(price) FROM product_item WHERE product_id = ?";
        List<Map.Entry<Float, Float>> result = genericDAO.query(sql, resultSet -> {
            try {
                return Map.entry(resultSet.getFloat(1), resultSet.getFloat(2));
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return null;
        }, id);
        return result.get(0);
    }

    @Override
    public Long getProductItemIdByVariations(Long v1, Long v2) {
        String sql = "SELECT id FROM product_item WHERE (variation1 = ? OR variation1 IS NULL) AND (variation2 = ? OR variation2 IS NULL)";

        List<Long> productItemId = genericDAO.query(sql, resultSet -> {
            try{
                return resultSet.getLong("id");
            }catch (SQLException e){
                e.printStackTrace();
            }
            return null;
        }, v1, v2);
        return productItemId.isEmpty() ? null : productItemId.get(0);
    }

    @Override
    public int getQuantityByProductId(Long id) {
        String sql = "SELECT SUM(qty_in_stock) AS quantity FROM product_item WHERE product_id = ?";

        List<Integer> quantity = genericDAO.query(sql, resultSet -> {
            try{
                return resultSet.getInt("quantity");
            }catch (SQLException e){
                e.printStackTrace();
            }
            return null;
        }, id);
        return quantity.isEmpty() ? null : quantity.get(0);
    }
    @Override
    public ProductItem findById(long productItemId) {
        String sql = "SELECT * FROM product_item WHERE id = ?" ;
        List<ProductItem> productItems = genericDAO.query(sql, new ProductItemMapper(), productItemId);
        return !productItems.isEmpty() ? productItems.get(0) : null;
    }

    @Override
    public Object addProductItems(List<ProductItem> productItems) {
        return genericDAO.saveAll(
                "INSERT INTO product_item (product_id, product_img_path, variation1, variation2, qty_in_stock, price) VALUES (?, ?, ?, ?, ?, ?)" + ", (?, ?, ?, ?, ?, ?)"
                        .repeat(Math.max(0, productItems.size() - 1)),
                productItems);
    }
}
