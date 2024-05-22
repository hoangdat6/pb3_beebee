package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.UserAddressDAO;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.UserAddress;

import java.sql.Timestamp;

public class UserAddressDAOImpl implements UserAddressDAO {
    private final GenericDAO<Address> genericDAO = new AbstractDAOImpl<>();

    @Override
    public Long addAddress(UserAddress userAddress) {
        StringBuilder sb = new StringBuilder();
        sb.append("INSERT INTO user_address (user_id, address_id, created_at, updated_at,is_default)");
        sb.append(" VALUES (?, ?, ?, ?, ?)");
        return genericDAO.save(sb.toString(),
                userAddress.getUserId(),
                userAddress.getAddressId(),
                new Timestamp(System.currentTimeMillis()),
                new Timestamp(System.currentTimeMillis()),
                userAddress.isDefault()
        );
    }
    @Override
    public void delete(Long id,Long idAddress) {
        String sql = "DELETE FROM user_address WHERE address_id = ? AND user_id = ?";
        genericDAO.delete(sql,idAddress,id);
    }

    @Override
    public void setDefault(Long id, Long idAddress,boolean isDefault) {
        if(isDefault) {
            String sql ="UPDATE user_address SET is_default = ? WHERE user_id = ? and is_default= ?";
        genericDAO.update(sql,false,id,true);
        }
        String sql ="UPDATE user_address SET is_default = ? WHERE user_id = ? AND address_id = ?";
         genericDAO.update(sql,isDefault,id,idAddress);

    }
}
