package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.AddressDAO;
import com.example.pbl3_1.dao.impl.AddressDAOImpl;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.service.AddressService;

import java.util.List;

public class AddressServiceImpl implements AddressService {
    private final AddressDAO addressDAO = new AddressDAOImpl();
    @Override
    public Long add(Address address, Long id) {
        return addressDAO.add(address,id);
    }
    @Override
    public Long addAddress(Address address) {
        return addressDAO.addAddress(address);
    }
    @Override
    public List<Address> getByIdUser(Long id) {
        return addressDAO.getByIdUser(id);
    }

    @Override
    public Address getDefaultAddressByUserId(Long id) {
        return addressDAO.getDefaultAddressByUserId(id);
    }
}
