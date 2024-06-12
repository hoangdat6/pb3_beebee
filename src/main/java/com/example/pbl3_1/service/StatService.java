package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.admin.AdminOverviewStat;
import com.example.pbl3_1.controller.dto.seller.Stats;

import java.util.List;

public interface StatService {

    List<Stats> getStatsByYear(String year);

    AdminOverviewStat getOverviewStats(int timeType);
}
