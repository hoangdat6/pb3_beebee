package com.example.pbl3_1.controller.dto.seller;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
@Getter
@Setter
@AllArgsConstructor
public class StatisticDTO {
    public Long totalRevenue;
    public Long totalOrder;
    public Float conversionRate;
    public Long totalAccesses;
    public Integer month;
}
