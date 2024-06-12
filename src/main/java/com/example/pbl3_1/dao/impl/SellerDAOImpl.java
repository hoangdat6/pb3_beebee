package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.seller.SellerDTO;
import com.example.pbl3_1.controller.dto.seller.Stats;
import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.SellerDAO;
import com.example.pbl3_1.entity.Seller;
import com.example.pbl3_1.mapper.SellerMapper;

import java.util.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

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

    @Override
    public Long getIdByUserId(Long userId) {
        String sql = "select id from sellers where user_id = ?";
        return genericDAO.query(sql, resultSet -> {
            try {
                return resultSet.getLong("id");
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, userId).stream().findFirst().orElse(null);
    }

    @Override
    public Stats getStatistic(Long sellerId, Date startDate, Date endDate) {
        Timestamp startTimestamp = new Timestamp(startDate.getTime());
        Timestamp endTimestamp = new Timestamp(endDate.getTime());

        String query = "select\n" +
                "    (\n" +
                "        select sum(orders.order_total)\n" +
                "        from  orders\n" +
                "        where orders.seller_id = ?\n" +
                "        AND orders.order_status_id = 5\n" +
                "        AND orders.created_at BETWEEN ? AND ?\n" +
                "    ) AS totalRevenue,\n" +
                "    (\n" +
                "        select sum(products.views)\n" +
                "        from products left join product_visit\n" +
                "        on products.id = product_visit.product_id\n" +
                "        where products.seller_id = ?\n" +
                "        AND product_visit.time BETWEEN ? AND ?\n" +
                "    ) AS totalAccesses,\n" +
                "    (\n" +
                "        select count(order_detail.product_item_id)\n" +
                "        from orders inner join order_detail on orders.id = order_detail.order_id\n" +
                "        where orders.seller_id = ?\n" +
                "        AND orders.created_at BETWEEN ? AND ?\n" +
                "    ) AS totalProductsSold,\n" +
                "    (\n" +
                "        select count(order_detail.order_id)\n" +
                "        from orders inner join order_detail on orders.id = order_detail.order_id\n" +
                "        where orders.seller_id = ?\n" +
                "        AND orders.created_at BETWEEN ? AND ?\n" +
                "    ) AS totalOrders;";
        return genericDAO.query(query, resultSet -> {
            try {
                return Stats.builder()
                        .totalRevenue(resultSet.getLong("totalRevenue"))
                        .totalAccesses(resultSet.getLong("totalAccesses"))
                        .conversionRate(Double.valueOf(String.format("%.4f", 1.0f * resultSet.getLong("totalProductsSold") / Math.max(resultSet.getLong("totalAccesses"), 1))))
                        .totalOrder(resultSet.getLong("totalOrders"))
                        .isHasValue(true)
                        .build();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, sellerId, startTimestamp, endTimestamp, sellerId, startTimestamp, endTimestamp, sellerId, startTimestamp, endTimestamp, sellerId, startTimestamp, endTimestamp).stream().findFirst().orElse(null);
    }

    @Override
    public List<Stats> getStatisticByYear(Long sellerId, int year) {
        String query = "SELECT\n" +
                "    months.month AS month,\n" +
                "    COALESCE(\n" +
                "            (\n" +
                "                SELECT SUM(orders.order_total)\n" +
                "                FROM orders\n" +
                "                WHERE orders.seller_id = ?\n" +
                "                  AND orders.order_status_id = 5\n" +
                "                  AND YEAR(orders.created_at) = ?\n" +
                "                  AND MONTH(orders.created_at) = months.month\n" +
                "            ), 0\n" +
                "    ) AS totalRevenue,\n" +
                "    COALESCE(\n" +
                "            (\n" +
                "                SELECT SUM(products.views)\n" +
                "                FROM products\n" +
                "                WHERE products.seller_id = ?\n" +
                "                  AND YEAR(products.created_at) = ?\n" +
                "                  AND MONTH(products.created_at) = months.month\n" +
                "            ), 0\n" +
                "    ) AS totalAccesses\n" +
                "FROM (\n" +
                "         SELECT 1 AS month UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL\n" +
                "         SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL\n" +
                "         SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL\n" +
                "         SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12\n" +
                "     ) AS months\n" +
                "         LEFT JOIN orders ON MONTH(orders.created_at) = months.month AND orders.seller_id = ? AND YEAR(orders.created_at) = ?\n" +
                "GROUP BY months.month\n" +
                "ORDER BY months.month;";

        return genericDAO.query(query, resultSet -> {
            try {
                return Stats.builder()
                        .month(resultSet.getInt("month"))
                        .totalRevenue(resultSet.getLong("totalRevenue"))
                        .totalAccesses(resultSet.getLong("totalAccesses"))
                        .build();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, sellerId, year, sellerId, year, sellerId, year);
    }

    @Override
    public Date getShopCreatedAtByID(Long sellerId) {
        String sql = "Select created_at from sellers where id = ?";
        return genericDAO.query(sql, resultSet -> {
            try {
                return resultSet.getTimestamp("created_at");
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, sellerId).stream().findFirst().orElse(null);
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
