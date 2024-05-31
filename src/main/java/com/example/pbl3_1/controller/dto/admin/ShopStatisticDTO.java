package com.example.pbl3_1.controller.dto.admin;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

@AllArgsConstructor
@Getter
@Setter
@Builder
public class ShopStatisticDTO {
    Long id;
    String name;
    String imgPath;
    String location;
    Integer followers;
    Integer totalProducts;
    Long totalRevenue;
    Float rating;
    Boolean is_locked;
    Date createdAt;
    String email;
}
