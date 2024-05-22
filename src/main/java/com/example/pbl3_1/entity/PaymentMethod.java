package com.example.pbl3_1.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class PaymentMethod {
    private short id;
    private String name;

    public PaymentMethod() {}
}
