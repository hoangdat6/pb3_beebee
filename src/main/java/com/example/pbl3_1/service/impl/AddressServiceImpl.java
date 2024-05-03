package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.AddressDAO;
import com.example.pbl3_1.dao.impl.AddressDAOImpl;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.service.AddressService;

public class AddressServiceImpl implements AddressService {
    private final AddressDAO addressDAO = new AddressDAOImpl();
    @Override
    public Long addAddress(Address address) {
        return addressDAO.addAddress(address);
    }
}
