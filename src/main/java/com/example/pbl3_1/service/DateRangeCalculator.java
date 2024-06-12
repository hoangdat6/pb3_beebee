package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.DateWrapper.DateWrapper;

import java.util.Date;

public interface DateRangeCalculator {
    public void WeekRange(Date date, DateWrapper startDay, DateWrapper endDay);
    public void MonthRange(Date date, DateWrapper startDay, DateWrapper endDay);
    public void YearRange(Date date, DateWrapper startDay, DateWrapper endDay);
    Date addDays(Date date, int days);
    Date subtractDays(Date date, int days);
    Date addMonths(Date date, int months);
    Date subtractMonths(Date date, int months);
    Date addYears(Date date, int years);
    Date subtractYears(Date date, int years);
}
