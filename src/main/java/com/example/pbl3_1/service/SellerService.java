package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.seller.StatisticOverview;
import com.example.pbl3_1.controller.dto.seller.Stats;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.Seller;

import java.util.Date;
import java.util.List;

public interface SellerService {
    Object getShopById(Long id, Long userId);
    List<ProductPreviewDTO> getShopByTimeDESC(Long id, Integer offset, Integer limit, String priceSortBy);
    List<ProductPreviewDTO> getShopByPopDESC(Long id, Integer offset, Integer limit, String priceSortBy);
    Long addShop(Seller seller, Address address);
    void updateIsFollowed(Long userId, Long sellerId, Boolean isFollowed);
    Long getIdByUserId(Long userId);

    Stats getStatistic(Long sellerId);

    List<Stats> getStatisticByYear(Long sellerId, Integer year);

    StatisticOverview getStatisticOverview(Long sellerId, Integer timeType);

    Date getShopCreatedAtByID(Long sellerId);
}
