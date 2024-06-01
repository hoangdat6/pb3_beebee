package com.example.pbl3_1.entity;

import com.example.pbl3_1.entity.myEnum.EOrderStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class OrderStatus {
    private EOrderStatus orderStatus;
    private String name;

    public OrderStatus() {}
}
