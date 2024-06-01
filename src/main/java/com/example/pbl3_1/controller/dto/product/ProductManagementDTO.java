package com.example.pbl3_1.controller.dto.product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.math.BigInteger;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class ProductManagementDTO {
    private Long id;
    private String name;
    private Integer price;
    private Integer quantity;
    private Long sales;
    private String statusName;

    @Override
    public String toString() {
        return "ProductManagementDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", sales=" + sales +
                ", statusName='" + statusName + '\'' +
                '}';
    }
}
