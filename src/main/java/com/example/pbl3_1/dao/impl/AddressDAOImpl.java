package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.AddressDAO;
import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.UserAddressDAO;
import com.example.pbl3_1.entity.Address;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

public class AddressDAOImpl implements AddressDAO {
    private final GenericDAO<Address> genericDAO = new AbstractDAOImpl<>();
    private final UserAddressDAO userAddressDAO = new UserAddressDAOImpl();
    @Override
    public Long add(Address address, Long id) {
        StringBuilder sb = new StringBuilder();
        sb.append("INSERT INTO address (fullname, phone, detail, ward, district, province, created_at, updated_at)");
        sb.append(" VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

        Long idAddress= genericDAO.save(sb.toString(),
                address.getFullname(),
                address.getPhone(),
                address.getDetail(),
                address.getWard(),
                address.getDistrict(),
                address.getProvince(),
                new Timestamp(System.currentTimeMillis()),
                new Timestamp(System.currentTimeMillis())
        );
        userAddressDAO.addAddress(id,idAddress);
        return id;
    }

    @Override
    public Long addAddress(Address address) {
        StringBuilder sb = new StringBuilder();
        sb.append("INSERT INTO address (fullname, phone, detail, ward, district, province, created_at, updated_at)");
        sb.append(" VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

        return genericDAO.save(sb.toString(),
                address.getFullname(),
                address.getPhone(),
                address.getDetail(),
                address.getWard(),
                address.getDistrict(),
                address.getProvince(),
                new Timestamp(System.currentTimeMillis()),
                new Timestamp(System.currentTimeMillis())
        );
    }

    @Override
    public List<Address> getByIdUser(Long id) {
        String sql =" SELECT fullname, phone, detail, ward, district , province FROM user_address INNER JOIN address ON user_address.address_id=address.id WHERE user_address.user_id= ?";
        return genericDAO.query(sql,resultSet -> {
            try {
                return Address.builder()
                        .fullname(resultSet.getString("fullname"))
                        .phone(resultSet.getString("phone"))
                        .detail(resultSet.getString("detail"))
                        .ward(resultSet.getString("ward"))
                        .province(resultSet.getString("province"))
                        .district(resultSet.getString("district"))
                        .build();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
        },id);
    }
}
