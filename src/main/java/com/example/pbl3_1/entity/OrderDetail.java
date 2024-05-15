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
public class OrderDetail {
    private Long id;
    private Long productItemId;
    private Long orderId;
    private int quantity;
    private Integer total;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    public OrderDetail() {}
}
