package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.admin.ShopStatisticDTO;
import com.example.pbl3_1.controller.dto.admin.UserStatisticDTO;
import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.UserManageDAO;
import com.example.pbl3_1.dao.impl.AbstractDAOImpl;
import lombok.ToString;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserManageDAOImpl implements UserManageDAO {
    GenericDAO genericDAO = new AbstractDAOImpl();
    @Override
    public List<UserStatisticDTO> getAllCustomer() {
        String sql = "SELECT users.id, users.username, users.avatar, SellerTmp.avatar AS ShopAvatar, email, users.phone, users.created_at,\n" +
                "coalesce(sum(orders.order_total), 0) as total, is_locked\n" +
                "FROM users\n" +
                "    LEFT JOIN orders ON orders.user_id = users.id\n" +
                "    LEFT JOIN (\n" +
                "        select sellers.user_id, sellers.avatar\n" +
                "        from sellers\n" +
                "    ) AS SellerTmp ON SellerTmp.user_id = users.id\n" +
                "GROUP BY users.id, username, email, is_locked, SellerTmp.avatar\n" +
                "LIMIT 10;";

        List<UserStatisticDTO> list =  genericDAO.query(sql, result ->{
            return UserStatisticDTO.builder()
                    .id(result.getString("id"))
                    .name(result.getString("username"))
                    .email(result.getString("email"))
                    .is_locked(result.getBoolean("is_locked"))
                    .total(result.getLong("total"))
                    .imgPath(result.getString("avatar") == null ? "" : "/" + result.getString("avatar"))
                    .createdAt(result.getDate("created_at"))
                    .phone(result.getString("phone"))
                    .shopImgPath(result.getString("ShopAvatar") == null ? "" : "/" +result.getString("ShopAvatar").split(",")[0])
                    .build();
        });
        return list;
    }
    @Override
    public List<UserStatisticDTO> getAllSeller() {
        String sql = "SELECT sellers.id, sellers.shop_name, " +
                "(SELECT coalesce(SUM(order_total), 0) FROM orders WHERE sellers.id = orders.seller_id) AS total_revenue,\n" +
                "sellers.is_locked,\n" +
                "users.email\n" +
                "FROM sellers\n" +
                "LEFT JOIN orders ON orders.seller_id = sellers.id\n" +
                "LEFT JOIN address ON sellers.address_id = address.id\n" +
                "LEFT JOIN users ON sellers.user_id = users.id\n" +
                "GROUP BY sellers.id\n" +
                "LIMIT 10;";
        return genericDAO.query(sql, result -> {
            return UserStatisticDTO.builder()
                    .id(result.getString("id"))
                    .name(result.getString("shop_name"))
                    .email(result.getString("email"))
                    .is_locked(result.getBoolean("is_locked"))
                    .total(result.getLong("total_revenue"))
                    .build();
        });
    }

    @Override
    public List<UserStatisticDTO> searchCustomers(String userSearch) {
        String query = "SELECT users.id, users.username, users.avatar, SellerTmp.avatar AS ShopAvatar, email, users.phone, users.created_at,\n" +
                "coalesce(sum(orders.order_total), 0) as total, is_locked\n" +
                "FROM users\n" +
                "    LEFT JOIN orders ON orders.user_id = users.id\n" +
                "    LEFT JOIN (\n" +
                "        select sellers.user_id, sellers.avatar\n" +
                "        from sellers\n" +
                "    ) AS SellerTmp ON SellerTmp.user_id = users.id\n" +
                "WHERE username LIKE '%" + userSearch + "%' OR email LIKE '%"+ userSearch + "%@gmail.com' \n" +
                "GROUP BY users.id, username, email, is_locked, SellerTmp.avatar\n" +
                "LIMIT 10;";
        List<UserStatisticDTO> list =  genericDAO.query(query, result -> {
            return UserStatisticDTO.builder()
                    .id(result.getString("id"))
                    .name(result.getString("username"))
                    .email(result.getString("email"))
                    .is_locked(result.getBoolean("is_locked"))
                    .total(result.getLong("total"))
                    .build();
        });
        return list;
    }

    @Override
    public ShopStatisticDTO getShopById(Long id) {
        String sql = "SELECT\n" +
                "    sellers.id,\n" +
                "    sellers.shop_name,\n" +
                "    sellers.avatar,\n" +
                "    address.province,\n" +
                "    (SELECT COUNT(*) FROM seller_followers WHERE sellers.id = seller_followers.seller_id) AS followers,\n" +
                "    (SELECT COUNT(*) FROM products WHERE sellers.id = products.seller_id) AS count_products,\n" +
                "    (SELECT coalesce(SUM(order_total), 0) FROM orders WHERE sellers.id = orders.seller_id) AS total_revenue,\n" +
                "    sellers.is_locked,\n" +
                "    sellers.created_at\n" +
                "FROM\n" +
                "    sellers\n" +
                "        LEFT JOIN\n" +
                "    orders ON orders.seller_id = sellers.id\n" +
                "        LEFT JOIN\n" +
                "    address ON sellers.address_id = address.id\n" +
                "WHERE\n" +
                "    sellers.user_id = ?\n" +
                "GROUP BY\n" +
                "    sellers.id;";
        List<ShopStatisticDTO> list =  genericDAO.query(sql, result -> {
            return ShopStatisticDTO.builder()
                    .id(result.getLong("id"))
                    .name(result.getString("shop_name"))
                    .imgPath("/" + result.getString("avatar").split(",")[0])
                    .location(result.getString("province"))
                    .followers(result.getInt("followers"))
                    .totalProducts(result.getInt("count_products"))
                    .totalRevenue(result.getLong("total_revenue"))
                    .is_locked(result.getBoolean("is_locked"))
                    .createdAt(result.getDate("created_at"))
                    .build();
        }, id);
        if (list.size() == 0) return null;
        return list.get(0);
    }

    @Override
    public UserStatisticDTO getCustomerById(Long id) {
        String sql = "select users.id, users.username, avatar, email, users.phone, users.created_at,\n" +
                "       coalesce(sum(orders.order_total), 0) as total, is_locked\n" +
                "from users\n" +
                "left join orders on users.id = orders.user_id\n" +
                "where users.id = ?\n" +
                "group by users.id;";
        List<UserStatisticDTO> list =  genericDAO.query(sql, result -> {
            return UserStatisticDTO.builder()
                    .id(result.getString("id"))
                    .name(result.getString("username"))
                    .email(result.getString("email"))
                    .is_locked(result.getBoolean("is_locked"))
                    .total(result.getLong("total"))
                    .phone(result.getString("phone"))
                    .createdAt(result.getDate("created_at"))
                    .imgPath(result.getString("avatar") == null ? "" : "/" +result.getString("avatar"))
                    .build();
        }, id);
        return list.get(0);
    }

    private boolean getAccountis_locked(Long id) {
        String sql = "SELECT is_locked FROM users WHERE id = ?";
        List<Boolean> is_lockedes = genericDAO.query(sql, result -> {
            try {
                return result.getBoolean("is_locked");
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
        }, id);
        return is_lockedes.get(0);
    }

    //Check if the shop locked or unlocked, locked return false, unlocked return true
    private boolean getShopis_locked(Long id) {
        String sql = "SELECT is_locked FROM sellers WHERE id = ?";
        List<Boolean> is_lockedes = genericDAO.query(sql, result -> {
            try {
                return result.getBoolean("is_locked");
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
        }, id);
        return is_lockedes.get(0);
    }

    //unlock return true, lock return false
    @Override
    public boolean lockAccount(Long lockID) {
        String sql;
        boolean unlock = false;
        if (getAccountis_locked(lockID)) {
            sql = "UPDATE users SET is_locked = FALSE WHERE id = ?";
        } else {
            unlock = true;
            sql = "UPDATE users SET is_locked = TRUE WHERE id = ?";
        }
        genericDAO.update(sql, lockID);
        return unlock;
    }

    //unlock return true, lock return false
    @Override
    public boolean lockShop(Long lockShopID) {
        String sql;
        boolean unlock = false;
        if (getShopis_locked(lockShopID)) {
            sql = "UPDATE sellers SET is_locked = FALSE WHERE id = ?";
        } else {
            sql = "UPDATE sellers SET is_locked = TRUE WHERE id = ?";
            unlock = true;
        }
        genericDAO.update(sql, lockShopID);
        return unlock;
    }

    @Override
    public List<UserStatisticDTO> searchSeller(String sellerSearch) {
        String query = "SELECT sellers.id, sellers.shop_name, " +
                "(SELECT coalesce(SUM(order_total), 0) FROM orders WHERE sellers.id = orders.seller_id) AS total_revenue,\n" +
                "sellers.is_locked,\n" +
                "users.email\n" +
                "FROM sellers\n" +
                "LEFT JOIN orders ON orders.seller_id = sellers.id\n" +
                "LEFT JOIN address ON sellers.address_id = address.id\n" +
                "LEFT JOIN users ON sellers.user_id = users.id\n" +
                "WHERE shop_name LIKE '%" + sellerSearch + "%' OR email LIKE '%"+ sellerSearch + "%@gmail.com' \n" +
                "GROUP BY sellers.id\n" +
                "LIMIT 10;";
        List<UserStatisticDTO> list =  genericDAO.query(query, result -> {
            return UserStatisticDTO.builder()
                    .id(result.getString("id"))
                    .name(result.getString("shop_name"))
                    .email(result.getString("email"))
                    .is_locked(result.getBoolean("is_locked"))
                    .total(result.getLong("total_revenue"))
                    .build();
        });
        return list;
    }

    @Override
    public UserStatisticDTO getCustomerByShopId(Long id) {
        String sql = "select users.id, users.username, users.avatar, email, users.phone, users.created_at,\n" +
                "coalesce(sum(orders.order_total), 0) as total, users.is_locked\n" +
                "from users\n" +
                "left join orders on users.id = orders.user_id\n" +
                "left join sellers on users.id = sellers.user_id\n" +
                "where sellers.id = ?\n" +
                "group by users.id;";
        List<UserStatisticDTO> list =  genericDAO.query(sql, result -> {
            return UserStatisticDTO.builder()
                    .id(result.getString("id"))
                    .name(result.getString("username"))
                    .email(result.getString("email"))
                    .is_locked(result.getBoolean("is_locked"))
                    .total(result.getLong("total"))
                    .phone(result.getString("phone"))
                    .createdAt(result.getDate("created_at"))
                    .imgPath(result.getString("avatar") == null ? "" : "/" +result.getString("avatar"))
                    .build();
        }, id);
        return list.get(0);
    }

    @Override
    public ShopStatisticDTO getShopByShopId(Long id) {
        String sql = "SELECT\n" +
                "    sellers.id,\n" +
                "    sellers.shop_name,\n" +
                "    sellers.avatar,\n" +
                "    address.province,\n" +
                "    (SELECT COUNT(*) FROM seller_followers WHERE sellers.id = seller_followers.seller_id) AS followers,\n" +
                "    (SELECT COUNT(*) FROM products WHERE sellers.id = products.seller_id) AS count_products,\n" +
                "    (SELECT coalesce(SUM(order_total), 0) FROM orders WHERE sellers.id = orders.seller_id) AS total_revenue,\n" +
                "    sellers.is_locked,\n" +
                "    sellers.created_at\n" +
                "FROM\n" +
                "    sellers\n" +
                "        LEFT JOIN\n" +
                "    orders ON orders.seller_id = sellers.id\n" +
                "        LEFT JOIN\n" +
                "    address ON sellers.address_id = address.id\n" +
                "WHERE\n" +
                "    sellers.id = ?\n" +
                "GROUP BY\n" +
                "    sellers.id;";
        List<ShopStatisticDTO> list =  genericDAO.query(sql, result -> {
            return ShopStatisticDTO.builder()
                    .id(result.getLong("id"))
                    .name(result.getString("shop_name"))
                    .imgPath("/" + result.getString("avatar").split(",")[0])
                    .location(result.getString("province"))
                    .followers(result.getInt("followers"))
                    .totalProducts(result.getInt("count_products"))
                    .totalRevenue(result.getLong("total_revenue"))
                    .is_locked(result.getBoolean("is_locked"))
                    .createdAt(result.getDate("created_at"))
                    .build();
        }, id);
        if (list.size() == 0) return null;
        return list.get(0);
    }
}
