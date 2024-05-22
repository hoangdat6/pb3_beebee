package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.product.AddressDTO;
import com.example.pbl3_1.dao.AddressDAO;
import com.example.pbl3_1.dao.impl.AddressDAOImpl;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.service.AddressService;

import java.util.List;

public class AddressServiceImpl implements AddressService {
    private final AddressDAO addressDAO = new AddressDAOImpl();
     @Override
    public Long addAddress(Address address) {
        return addressDAO.addAddress(address);
    }
    @Override
    public List<AddressDTO> getByIdUser(Long id) {
        return addressDAO.getByIdUser(id);
    }

    @Override
// <<<<<<< hanh
    public void delete(Long id) {
        addressDAO.delete(id);
    }

    @Override
    public Integer update(Address address) {
        return addressDAO.update(address);
// =======
    public Address getDefaultAddressByUserId(Long id) {
        return addressDAO.getDefaultAddressByUserId(id);
// >>>>>>> main
    }
}
