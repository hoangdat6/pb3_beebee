package com.example.pbl3_1.controller.dto.cart;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
@AllArgsConstructor
@Getter
@Setter
public class SmallCartItem {
    String coverImgPath;
    String name;
    String shopImgPath;
    String shopName;
    String variations;
    Long quantity;
    Long price;
}
