package com.example.pbl3_1.controller.dto.cart;

import com.example.pbl3_1.entity.ShippingMethod;
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
    ShippingMethod shippingMethod;
    Boolean isLocked;
    List<ProductForCartDTO> productForCartDTOList;
}
