package com.example.pbl3_1.entity;

import lombok.*;

import java.sql.Timestamp;

@Getter
@Setter
@Builder
@ToString
@AllArgsConstructor
public class Address {
    Long id;
    String detail;
    String ward;
    String district;
    String province;
    Timestamp createdAt;
    Timestamp updatedAt;
    String fullname;
    String phone;
    public Address() {
    }

    public Address(String fullname, String phone,String detail, String ward, String district, String province) {
        this.fullname = fullname;
        this.phone = phone;
        this.detail = detail;
        this.ward = ward;
        this.district = district;
        this.province = province;
    }
    public Address(Long id, String fullname, String phone, String detail, String ward, String district, String province) {
        this.id = id;
        this.fullname = fullname;
        this.phone = phone;
        this.detail = detail;
        this.ward = ward;
        this.district = district;
        this.province = province;

    }
}
