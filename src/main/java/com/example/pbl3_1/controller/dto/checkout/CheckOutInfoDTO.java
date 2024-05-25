package com.example.pbl3_1.controller.dto.checkout;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;


@Getter
@Setter
@Builder
@AllArgsConstructor

public class CheckOutInfoDTO {
    private Long shopId;
    private String shopName;
    private String shopImg;
    private Boolean isLocked;
    private List<ProductForCheckOut> products;

    public CheckOutInfoDTO () {

    }
}
