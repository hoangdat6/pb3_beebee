package com.example.pbl3_1.dao;

import com.example.pbl3_1.entity.Address;

<<<<<<< HEAD
import java.util.List;

public interface AddressDAO {
    Long add(Address address, Long id);
    Long addAddress(Address address);
    List<Address> getByIdUser(Long id);
    Address getDefaultAddressByUserId(Long id);
=======
public interface AddressDAO {
    Long addAddress(Address address);
>>>>>>> 525f710 (Change UserController)
}
