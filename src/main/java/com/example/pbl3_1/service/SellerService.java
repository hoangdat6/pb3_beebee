package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;

import java.util.List;

public interface SellerService {
    Object getShopById(Long id, Long userId);
    List<ProductPreviewDTO> getShopByTimeDESC(Long id, Integer offset, Integer limit, String priceSortBy);
    List<ProductPreviewDTO> getShopByPopDESC(Long id, Integer offset, Integer limit, String priceSortBy);
}
