package com.example.pbl3_1.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class UserAddress {
    Long userId;
    Long addressId;
    Timestamp createdAt;
    Timestamp updateAt;
    boolean isDefault;

    public UserAddress(Long userId, Long addressId, boolean isDefault) {
        this.userId = userId;
        this.addressId = addressId;
        this.isDefault = isDefault;
    }
}
