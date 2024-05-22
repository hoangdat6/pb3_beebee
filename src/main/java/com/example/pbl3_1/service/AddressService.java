package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.product.AddressDTO;
import com.example.pbl3_1.entity.Address;

import java.util.List;

public interface AddressService {
    Long addAddress(Address address);
// <<<<<<< hanh
    List<AddressDTO> getByIdUser(Long id);
    void delete(Long id);
    Integer update(Address address);

// =======
//     List<Address> getByIdUser(Long id);

    Address getDefaultAddressByUserId(Long id);
// >>>>>>> main
}
