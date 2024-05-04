package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.dao.ProductDAO;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.mapper.ProductMapper;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImpl implements ProductDAO {
    private AbstractDAOImpl<Product> abstractDAO = new AbstractDAOImpl<>();
    @Override
    public Long save(Product product) {
        String sql = "insert into products (name, description, img_path, category_id, seller_id, created_at, discount) values (?, ?, ?, ?, ?, ?)";
        return abstractDAO.save(
                sql,
                product.getName(),
                product.getDescription(),
                product.getImgPath(),
                product.getCategoryId(),
                product.getSellerId(),
                new Timestamp(System.currentTimeMillis()),
                product.getDiscount()
        );
    }

    @Override
    public Integer update(Product product) {
        return null;
    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public Product getProductById(Long id) {
        String sql = "select * from products where id = ?";
        List<Product> products = abstractDAO.query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public List<Product> getProducts() {
        String sql = "select * from products";
        return abstractDAO.query(sql, new ProductMapper());
    }

    @Override
    public List<ProductPreviewDTO> getProductForHomeDtos() {
        StringBuilder sql = new StringBuilder("SELECT p.id, p.name, p.discount, p.img_path ,p.seller_id, s.shop_name, s.avatar, MIN(pi.price) as min_price\n");
        sql.append("FROM products AS p\n");
        sql.append("JOIN product_item pi ON p.id = pi.product_id\n");
        sql.append("JOIN sellers AS s ON p.seller_id = s.id\n");
        sql.append("GROUP BY p.id\n");
//        sql.append("LIMIT 20 OFFSET 0");


        return abstractDAO.query(sql.toString(), resultSet -> {
            try {
                return new ProductPreviewDTO(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getInt("min_price"),
                        resultSet.getInt("discount"),
                        resultSet.getString("img_path"),
                        resultSet.getLong("seller_id"),
                        resultSet.getString("shop_name"),
                        resultSet.getString("avatar")
                );
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        });
    }

    @Override
    public ProductDetailDTO getProductDetailById(Long id) {
        StringBuilder sql = new StringBuilder("SELECT p.id, p.name, p.discount, p.img_path , MIN(pi.price) as min_price, MAX(pi.price) as max_price, p.description,\n");
        sql.append("p.seller_id, s.shop_name, s.avatar,\n");
        sql.append("p.category_id ,c.name as category_name,\n");
        sql.append("SUM(qty_in_stock) as total_qty\n");
        sql.append("FROM products AS p\n");
        sql.append("JOIN product_item pi ON p.id = pi.product_id\n");
        sql.append("JOIN sellers AS s ON p.seller_id = s.id\n");
        sql.append("JOIN categories as c ON p.category_id = c.id\n");
        sql.append("WHERE p.id = ?");

        return abstractDAO.query(sql.toString(), resultSet -> {
            try {
                return new ProductDetailDTO(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getInt("max_price"),
                        resultSet.getInt("min_price"),
                        resultSet.getInt("discount"),
                        new ArrayList<>(List.of(resultSet.getString("img_path"))),
                        resultSet.getString("description"),
                        resultSet.getInt("category_id"),
                        resultSet.getString("category_name"),
                        resultSet.getLong("seller_id"),
                        resultSet.getString("shop_name"),
                        resultSet.getString("avatar"),
                        resultSet.getInt("total_qty"),
                        null
                );
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }, id).get(0);
    }

    @Override
    public void increaseView(Long id) {
        String sql = "UPDATE products SET views = views + 1 WHERE id = ?";
        abstractDAO.update(sql, id);
    }

    @Override
    public Long addProduct(Product product) {
        String sql = "INSERT INTO products (name, description, img_path, category_id, seller_id, created_at, discount, views) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        return abstractDAO.save(
                sql,
                product.getName(),
                product.getDescription(),
                product.getImgPath(),
                product.getCategoryId(),
                product.getSellerId(),
                new Timestamp(System.currentTimeMillis()),
                product.getDiscount(),
                0
        );
    }

    @Override
    public void updateProductImage(Long productId, String images) {
        String sql = "UPDATE products SET img_path = ? WHERE id = ?";
        abstractDAO.update(sql, images, productId);
    }
}
