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

    public Address() {
    }
}
