package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.DateWrapper.DateWrapper;
import com.example.pbl3_1.controller.dto.admin.AdminOverviewStat;
import com.example.pbl3_1.controller.dto.admin.AdminStat;
import com.example.pbl3_1.controller.dto.seller.Stats;
import com.example.pbl3_1.service.DateRangeCalculator;
import com.example.pbl3_1.service.StatDAO;
import com.example.pbl3_1.service.StatService;

import java.util.Date;
import java.util.List;

public class StatServiceImpl implements StatService {
    StatDAO statDAO = new StatDAOImpl();
    private final DateRangeCalculator dateRangeCalculator = new DateRangeCalculatorImpl();
    @Override
    public List<Stats> getStatsByYear(String year) {
        return statDAO.getStatsByYear(year);
    }

    @Override
    public AdminOverviewStat getOverviewStats(int timeType) {
        AdminOverviewStat statisticOverview;
        int dateDecrese = 0;
        DateWrapper startTime = new DateWrapper(null), endTime = new DateWrapper(null);
        switch (timeType) {
            case 0:
                dateRangeCalculator.WeekRange(new Date(System.currentTimeMillis()), startTime, endTime);
                dateDecrese = 7;
                break;
            case 1:
                dateRangeCalculator.MonthRange(new Date(System.currentTimeMillis()), startTime, endTime);
                dateDecrese = 30;
                break;
            case 2:
                dateRangeCalculator.YearRange(new Date(System.currentTimeMillis()), startTime, endTime);
                dateDecrese = 365;
                break;
            default:
                System.out.println("Invalid time type!");
        }

        AdminStat currentStats = statDAO.getOverviewStats(startTime.getDate(), endTime.getDate());
        Date lastStartDay = dateRangeCalculator.subtractDays(startTime.getDate(), dateDecrese);
        Date lastEndDay = dateRangeCalculator.subtractDays(endTime.getDate(), dateDecrese);
        AdminStat lastStats = statDAO.getOverviewStats(new Date(lastStartDay.getTime()), new Date(lastEndDay.getTime()));
        return new AdminOverviewStat(currentStats, lastStats);
    }
}
