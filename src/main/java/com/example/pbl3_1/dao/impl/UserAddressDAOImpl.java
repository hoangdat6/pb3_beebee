package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.UserAddressDAO;
import com.example.pbl3_1.entity.Address;

import java.sql.Timestamp;

public class UserAddressDAOImpl implements UserAddressDAO {
    private final GenericDAO<Address> genericDAO = new AbstractDAOImpl<>();

    @Override
    public Long addAddress(Long Id, Long idAddress) {
        StringBuilder sb = new StringBuilder();
        sb.append("INSERT INTO user_address (user_id, address_id, created_at, updated_at)");
        sb.append(" VALUES (?, ?, ?, ?)");
        return genericDAO.save(sb.toString(),
                Id,
                idAddress,
                new Timestamp(System.currentTimeMillis()),
                new Timestamp(System.currentTimeMillis())
        );
    }
}
