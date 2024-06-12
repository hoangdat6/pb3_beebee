package com.example.pbl3_1.controller.dto.seller;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
@Getter
@Setter
@AllArgsConstructor
public class Stats {
    private int type;
    private Long totalRevenue;
    private Long totalOrder;
    private Long totalAccesses;
    private Double conversionRate;
    private Boolean isHasValue;
    private int month;
}
