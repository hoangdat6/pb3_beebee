package com.example.pbl3_1.controller.dto.admin;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
@Getter
@Setter
@AllArgsConstructor
public class AdminOverviewStat {
    private AdminStat currentStats;
    private AdminStat previousStats;
}
