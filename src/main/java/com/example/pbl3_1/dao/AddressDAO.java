package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.address.AddressDTO;
import com.example.pbl3_1.entity.Address;

import java.util.List;

public interface AddressDAO {
    Long addAddress(Address address);
    List<AddressDTO> getByIdUser(Long id);
    void delete(Long id);
    Object update(Address address);
    Address getDefaultAddressByUserId(Long id);
    Address getAddressById(Long id);
}
