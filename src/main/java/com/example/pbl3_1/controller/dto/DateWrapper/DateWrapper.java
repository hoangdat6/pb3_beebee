package com.example.pbl3_1.controller.dto.DateWrapper;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@Builder
public class DateWrapper {
    private Date date;
}