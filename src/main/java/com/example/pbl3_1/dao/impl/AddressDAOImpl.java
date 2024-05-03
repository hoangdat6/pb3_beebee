package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.AddressDAO;
import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.entity.Address;

import java.sql.Timestamp;

public class AddressDAOImpl implements AddressDAO {
    private final GenericDAO<Address> genericDAO = new AbstractDAOImpl<>();
    @Override
    public Long addAddress(Address address) {
        StringBuilder sb = new StringBuilder();
        sb.append("INSERT INTO address (detail, ward, district, province, created_at, updated_at)");
        sb.append(" VALUES (?, ?, ?, ?, ?, ?)");

        return genericDAO.save(sb.toString(),
                address.getDetail(),
                address.getWard(),
                address.getDistrict(),
                address.getProvince(),
                new Timestamp(System.currentTimeMillis()),
                new Timestamp(System.currentTimeMillis())
        );
    }
}
