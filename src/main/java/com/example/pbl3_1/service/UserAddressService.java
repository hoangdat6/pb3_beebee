package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.UserAddress;

public interface UserAddressService {
    Long addAddress(UserAddress userAddress);
    void delete(Long id,Long idAddress);
    void setDefault(Long id, Long idAddress,boolean isDefault);
}
