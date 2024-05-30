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
public class Order {
    private String id;
    private Long userId;
    private Long sellerId;
    private String phone;
    private String fullName;
    private Long total;
    private String detailAddress;
    private String communeAddress;
    private String districtAddress;
    private String provinceAddress;
    private short orderStatusId;
    private short paymentMethodId;
    private short shippingMethodId;
    private Timestamp createdAt;
    private Timestamp updatedAt;


    public Order() {}
}
