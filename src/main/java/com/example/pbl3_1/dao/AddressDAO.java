package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Address;

import java.util.List;

public interface AddressDAO {
    Long add(Address address, Long id);
    Long addAddress(Address address);
    List<Address> getByIdUser(Long id);

}
