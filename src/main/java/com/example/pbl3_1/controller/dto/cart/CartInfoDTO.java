package com.example.pbl3_1.controller.dto.cart;

import lombok.*;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@Builder
@ToString
public class CartInfoDTO {
    Long shopId;
    String shopName;
    String shopAvatar;
    Boolean isLocked;
    List<ProductForCartDTO> productForCartDTOList;
}
