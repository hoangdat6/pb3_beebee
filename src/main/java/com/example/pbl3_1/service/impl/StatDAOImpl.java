package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.admin.AdminStat;
import com.example.pbl3_1.controller.dto.seller.Stats;
import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.impl.AbstractDAOImpl;
import com.example.pbl3_1.service.StatDAO;

import java.util.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

public class StatDAOImpl implements StatDAO {
    private final GenericDAO genericDAO = new AbstractDAOImpl();
    @Override
    public List<Stats> getStatsByYear(String year) {
        String query = "SELECT\n" +
                "    months.month AS month,\n" +
                "    COALESCE(\n" +
                "            (\n" +
                "                SELECT SUM(orders.order_total)\n" +
                "                FROM orders\n" +
                "                WHERE orders.order_status_id = 5\n" +
                "                  AND YEAR(orders.created_at) = ?\n" +
                "                  AND MONTH(orders.created_at) = months.month\n" +
                "            ), 0\n" +
                "    ) AS totalRevenue,\n" +
                "    COALESCE(\n" +
                "            (\n" +
                "                SELECT SUM(products.views)\n" +
                "                FROM products\n" +
                "                WHERE YEAR(products.created_at) = ?\n" +
                "                  AND MONTH(products.created_at) = months.month\n" +
                "            ), 0\n" +
                "    ) AS totalAccesses\n" +
                "FROM (\n" +
                "         SELECT 1 AS month UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL\n" +
                "         SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL\n" +
                "         SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL\n" +
                "         SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12\n" +
                "     ) AS months\n" +
                "         LEFT JOIN orders ON MONTH(orders.created_at) = months.month AND YEAR(orders.created_at) = ?\n" +
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
        }, year, year, year);
    }

    @Override
    public AdminStat getOverviewStats(Date startDate, Date endDate) {
        Timestamp startTimestamp = new Timestamp(startDate.getTime());
        Timestamp endTimestamp = new Timestamp(endDate.getTime());
        String query = "SELECT\n" +
                "    (\n" +
                "        SELECT SUM(orders.order_total)\n" +
                "        FROM orders\n" +
                "        WHERE  orders.order_status_id = 5\n" +
                "          AND orders.created_at BETWEEN ? AND ?\n" +
                "    ) AS totalRevenue,\n" +
                "    (\n" +
                "        SELECT SUM(products.views)\n" +
                "        FROM products\n" +
                "                 LEFT JOIN product_visit\n" +
                "                           ON products.id = product_visit.product_id\n" +
                "        WHERE product_visit.time BETWEEN ? AND ?\n" +
                "    ) AS totalAccesses,\n" +
                "    (\n" +
                "        SELECT COUNT(sellers.id)\n" +
                "        from sellers\n" +
                "        WHERE sellers.created_at BETWEEN ? AND ?\n" +
                "    ) AS newSeller,\n" +
                "    (\n" +
                "        select count(products.id)\n" +
                "        from products\n" +
                "        where products.created_at BETWEEN ? AND ?\n" +
                "    ) AS newProduct,\n" +
                "    (\n" +
                "        select count(orders.id)\n" +
                "        from orders\n" +
                "        where orders.order_status_id = 5\n" +
                "          AND orders.created_at BETWEEN ? AND ?\n" +
                "    ) AS totalOrder,\n" +
                "    (\n" +
                "        select count(order_detail.id)\n" +
                "        from order_detail\n" +
                "                 inner join orders on order_detail.order_id = orders.id\n" +
                "        where orders.order_status_id = 5\n" +
                "          and orders.created_at BETWEEN ? AND ?\n" +
                "    ) AS totalProductSold,\n" +
                "    (\n" +
                "        select count(users.id)\n" +
                "        from users\n" +
                "        where users.created_at BETWEEN ? AND ?\n" +
                "    ) AS newUser;";
        List<AdminStat> list =  genericDAO.query(query, resultSet -> {
            try {
                return AdminStat.builder()
                        .totalRevenue(resultSet.getLong("totalRevenue"))
                        .totalAccesses(resultSet.getLong("totalAccesses"))
                        .newSeller(resultSet.getLong("newSeller"))
                        .newProduct(resultSet.getLong("newProduct"))
                        .totalOrder(resultSet.getLong("totalOrder"))
                        .totalProductSold(resultSet.getLong("totalProductSold"))
                        .newCustomer(resultSet.getLong("newUser"))
                        .isHasValue(true)
                        .build();
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }, startTimestamp, endTimestamp, startTimestamp, endTimestamp, startTimestamp, endTimestamp, startTimestamp, endTimestamp, startTimestamp, endTimestamp, startTimestamp, endTimestamp, startTimestamp, endTimestamp);
        if (list.size() == 0) {
            return null;
        }
        return list.get(0);
    }
}
