package com.example.pbl3_1.entity;

import lombok.*;

import java.sql.Timestamp;
@Getter
@Setter
@Builder
@AllArgsConstructor
public class ShoppingCart {
    Long id;
    Long userId;
    Timestamp createdAt;
}
