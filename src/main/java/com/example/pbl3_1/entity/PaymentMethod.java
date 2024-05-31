package com.example.pbl3_1.entity;

import com.example.pbl3_1.entity.myEnum.EPaymentMethod;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class PaymentMethod {
    private EPaymentMethod paymentMethod;
    private String name;

    public PaymentMethod() {}
}
