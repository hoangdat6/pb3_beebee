package com.example.pbl3_1.controller.dto.admin;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
@Setter
@Getter
@AllArgsConstructor
public class AdminStat {
    Long totalRevenue;
    Long totalOrder;
    Long totalAccesses;
    Long newSeller;
    Long newProduct;
    Long newCustomer;
    Long totalProductSold;
    Boolean isHasValue;
}
