package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.Address;

import java.util.List;

public interface AddressService {
    Long add(Address address ,Long id);
    Long addAddress(Address address);
    List<Address> getByIdUser(Long id);

    Address getDefaultAddressByUserId(Long id);
}
