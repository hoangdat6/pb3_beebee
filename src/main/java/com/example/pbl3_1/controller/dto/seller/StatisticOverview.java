package com.example.pbl3_1.controller.dto.seller;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
@Getter
@Setter
@AllArgsConstructor
public class StatisticOverview {
    private Stats currentStats;
    private Stats previousStats;
}
