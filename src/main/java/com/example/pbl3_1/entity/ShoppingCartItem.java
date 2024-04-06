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
public class ShoppingCartItem {
    Long id;
    Long CartId;
    Long ProductItemId;
    Integer quantity;
    Timestamp createdAt;

    public ShoppingCartItem(){
        this.createdAt = new Timestamp(System.currentTimeMillis());
    }
}
