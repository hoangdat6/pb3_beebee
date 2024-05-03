package com.example.pbl3_1.mapper;

import com.example.pbl3_1.dao.UserDAO;
import com.example.pbl3_1.dao.impl.UserDAOimpl;
import com.example.pbl3_1.entity.Seller;

import java.sql.ResultSet;

public class SellerMapper implements RowMapper<Seller> {
    private UserDAO userDAO;
    @Override
    public Seller mapRow(ResultSet rs) {
        userDAO = new UserDAOimpl();
        Seller seller = null;
        try {
            seller=   Seller.builder()
                    .id(rs.getLong("id"))
                    .avatar( rs.getString("avatar"))
                    .shopName(rs.getString("shop_name"))
                    .description(rs.getString("description"))
                    .address(rs.getLong("address"))
                    .userId(userDAO.findById(rs.getInt("id")))
                    .followers(rs.getInt("followers"))
                    .views(rs.getInt("views"))
                    .createdAt(rs.getTimestamp("created_at"))
                    .build();
            return   seller;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
