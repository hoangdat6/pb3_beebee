package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.SellerDAO;
import com.example.pbl3_1.entity.Seller;
import com.example.pbl3_1.mapper.SellerMapper;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Objects;

public class SellerDAOImpl implements SellerDAO {
    private final GenericDAO<Seller> genericDAO = new AbstractDAOImpl<>();
    @Override
    public SellerDTO getShopById(Long id) {
        StringBuilder sql = new StringBuilder("SELECT s.id, s.shop_name, s.avatar, \n");
       sql.append("coalesce(f.follower_count, 0) as follower_count, coalesce(p.product_count, 0) as product_count, a.province, s.created_at\n");
        sql.append("FROM sellers s\n");
        sql.append("LEFT JOIN (\n");
        sql.append("    SELECT sf.seller_id, COUNT(*) as follower_count\n");
        sql.append("    FROM seller_followers sf\n");
        sql.append("    GROUP BY sf.seller_id\n");
        sql.append(") f ON s.id = f.seller_id\n");
        sql.append("LEFT JOIN (\n");
        sql.append("    SELECT p.seller_id, COUNT(*) as product_count\n");
        sql.append("    FROM products p\n");
        sql.append("    GROUP BY p.seller_id\n");
        sql.append(") p ON s.id = p.seller_id\n");
        sql.append("JOIN address a on s.address_id = a.id\n");
        sql.append("where s.id = ?;");

        List<SellerDTO> sellers = genericDAO.query(sql.toString(), resultSet -> {
            try {
                return SellerDTO.builder()
                        .id(resultSet.getLong("id"))
                        .shopName(resultSet.getString("shop_name"))
                        .avatar(resultSet.getString("avatar"))
                        .followers(resultSet.getInt("follower_count"))
                        .countProduct(resultSet.getInt("product_count"))
                        .province(resultSet.getString("province"))
                        .createdAt(resultSet.getTimestamp("created_at"))
                        .build();
            }catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, id);
        return sellers.isEmpty() ? null : sellers.get(0);
    }

    public Boolean isFollowed( Long sellerId, Long userId) {
        StringBuilder sql = new StringBuilder("select\n");
        sql.append("    (select IF(COUNT(sf.user_id) = 1, 1, 0)) as is_followed\n");
        sql.append("from  seller_followers sf where sf.seller_id = ? and sf.user_id = ?;");
        List<Boolean> sellers = genericDAO.query(sql.toString(), resultSet -> {
            try {
                return resultSet.getBoolean("is_followed");
            }catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, sellerId, userId);
        return sellers.get(0);
    }

    @Override
    public List<ProductPreviewDTO> getMostViewedProducts(Long id, Integer offset,Integer limit, String priceSortBy) {
        StringBuilder sql = new StringBuilder("select * from (\n");
        sql.append("  SELECT p.id, p.img_path, p.name, p.discount, MIN(pi.price) as min_price, p.created_at\n");
        sql.append("  FROM products p\n");
        sql.append("           JOIN product_item pi on p.id = pi.product_id\n");
        sql.append("           JOIN sellers s on p.seller_id = s.id\n");
        sql.append("  WHERE s.id = ?\n");
        sql.append("  GROUP BY p.id, p.views\n");
        sql.append("  ORDER BY p.views DESC LIMIT ? OFFSET ?\n");
        sql.append(") as t order by (min_price * (1 -  discount / 100))\n");
        sql.append(priceSortBy);

        return getProductPreviewDTOs(sql.toString(), id, limit, offset);
    }

    @Override
    public List<ProductPreviewDTO> getShopByTimeDESC(Long id, Integer offset,Integer limit, String priceSortBy) {
        StringBuilder sql = new StringBuilder("select * from (\n");
        sql.append("  SELECT p.id, p.img_path, p.name, p.discount, MIN(pi.price) as min_price, p.created_at\n");
        sql.append("  FROM products p\n");
        sql.append("           JOIN product_item pi on p.id = pi.product_id\n");
        sql.append("           JOIN sellers s on p.seller_id = s.id\n");
        sql.append("  WHERE s.id = ?\n");
        sql.append("  GROUP BY p.id, p.created_at\n");
        sql.append("  ORDER BY p.created_at DESC LIMIT ? OFFSET ?\n");
        sql.append(") as t order by (min_price * (1 -  discount / 100))\n");
        sql.append(priceSortBy);
        return getProductPreviewDTOs(sql.toString(), id, limit, offset);
    }

    @Override
    public Long addShop(Seller seller) {
        String sql = "INSERT INTO sellers (avatar, shop_name, description, address_id, user_id, views, created_at) VALUES (?, ?, ?, ?, ?, ?, ?);";
        return genericDAO.save(sql, seller.getAvatar(), seller.getShopName(), seller.getDescription(), seller.getAddressId(), seller.getUserId(), 0,
                new Timestamp(System.currentTimeMillis()));
    }

    @Override
    public Seller findBySellerId(Long id) {
        String sql = "select * from sellers where id = ? ";
        List<Seller> list = genericDAO.query(sql, new SellerMapper(),id);
        return (list.isEmpty() ? null : list.get(0));
    }

    public List<ProductPreviewDTO> getProductPreviewDTOs(String sql, Long idSeller,Integer limit , Integer offset) {
        return genericDAO.query(sql, resultSet -> {
            try {
                return ProductPreviewDTO.builder()
                        .id(resultSet.getLong("id"))
                        .name(resultSet.getString("name"))
                        .imgPath(   resultSet.getString("img_path"))
                        .price(resultSet.getInt("min_price"))
                        .discount(resultSet.getInt("discount"))
                        .build();

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, idSeller, limit, offset);
    }
}
