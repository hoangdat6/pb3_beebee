package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.admin.AdminStat;
import com.example.pbl3_1.controller.dto.seller.Stats;

import java.util.Date;
import java.util.List;

public interface StatDAO {
    List<Stats> getStatsByYear(String year);

    AdminStat getOverviewStats(Date startDate, Date endDate);
}
