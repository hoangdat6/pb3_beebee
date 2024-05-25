package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.UserAddressDAO;
import com.example.pbl3_1.dao.impl.UserAddressDAOImpl;
import com.example.pbl3_1.entity.UserAddress;
import com.example.pbl3_1.service.UserAddressService;

public class UserAddressServiceImpl implements UserAddressService {
    private final UserAddressDAO userAddressDAO = new UserAddressDAOImpl();
    @Override
    public Long addAddress(UserAddress userAddress) {
        return userAddressDAO.addAddress(userAddress);
    }

    @Override
    public void delete(Long id,Long idAddress)
    {
        userAddressDAO.delete(id,idAddress);
    }

    @Override
    public void setDefault(Long id, Long idAddress,boolean isDefault) {
        userAddressDAO.setDefault(id,idAddress,isDefault);
    }

}
