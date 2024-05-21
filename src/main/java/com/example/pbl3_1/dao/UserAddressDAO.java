package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.UserAddress;

public interface UserAddressDAO {
    Long addAddress(UserAddress userAddress);
    void delete(Long id,Long idAddress);
    void setDefault(Long id,Long IdAddress,boolean isDefault);

}
