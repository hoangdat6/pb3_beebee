package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.DateWrapper.DateWrapper;
import com.example.pbl3_1.service.DateRangeCalculator;

import java.util.Calendar;
import java.util.Date;

public class DateRangeCalculatorImpl implements DateRangeCalculator{

    @Override
    public void WeekRange(Date date, DateWrapper startDay, DateWrapper endDay) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.set(Calendar.DAY_OF_WEEK, cal.getFirstDayOfWeek());
        startDay.setDate(new Date(cal.getTimeInMillis()));
        cal.add(Calendar.DATE, 6);
        endDay.setDate(new Date(cal.getTimeInMillis()));
    }

    @Override
    public void MonthRange(Date date, DateWrapper startDay, DateWrapper endDay) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.set(Calendar.DAY_OF_MONTH, 1);
        startDay.setDate(new Date(cal.getTimeInMillis()));
        cal.set(Calendar.DAY_OF_MONTH, cal.getActualMaximum(Calendar.DAY_OF_MONTH));
        endDay.setDate(new Date(cal.getTimeInMillis()));
    }

    @Override
    public void YearRange(Date date, DateWrapper startDay, DateWrapper endDay) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.set(Calendar.DAY_OF_YEAR, 1);
        startDay.setDate(new Date(cal.getTimeInMillis()));
        cal.set(Calendar.DAY_OF_YEAR, cal.getActualMaximum(Calendar.DAY_OF_YEAR));
        endDay.setDate(new Date(cal.getTimeInMillis()));
    }
    @Override
    public Date addDays(Date date, int days) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, days);
        return new Date(cal.getTimeInMillis());
    }
    @Override
    public Date subtractDays(Date date, int days) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, -days);
        return new Date(cal.getTimeInMillis());
    }
    @Override
    public Date addMonths(Date date, int months) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, months);
        return new Date(cal.getTimeInMillis());
    }

    @Override
    public Date subtractMonths(Date date, int months) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, -months);
        return new Date(cal.getTimeInMillis());
    }

    @Override
    public Date addYears(Date date, int years) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.YEAR, years);
        return new Date(cal.getTimeInMillis());
    }

    @Override
    public Date subtractYears(Date date, int years) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.YEAR, -years);
        return new Date(cal.getTimeInMillis());
    }
}
