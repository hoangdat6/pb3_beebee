package com.example.pbl3_1.entity;

import com.example.pbl3_1.entity.myEnum.EShippingMethod;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class ShippingMethod {
    private EShippingMethod shippingMethod;
    private String name;
    private String description;
    private int fee;

    public ShippingMethod() {}
}
