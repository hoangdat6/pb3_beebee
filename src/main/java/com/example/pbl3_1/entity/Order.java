package com.example.pbl3_1.entity;

import com.example.pbl3_1.controller.dto.product.ProductForShoppingCartDTO;

import java.util.List;

public class Order {
    List<ProductForShoppingCartDTO> orderItems;
    String shopName;
    String status;
    String imgPath;
}
