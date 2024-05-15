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
    private Long id;
    private Long userId;
    private short orderStatusId;
    private short paymentMethodId;
    private short shippingMethodId;
    private Integer total;
    private String phone;
    private String fullName;
    private String communeAddress;
    private String districtAddress;
    private String provinceAddress;
    private Timestamp createdAt;
    private Timestamp updatedAt;


    public Order() {}
}
