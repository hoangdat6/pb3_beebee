package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.seller.SellerDTO;
import com.example.pbl3_1.controller.dto.seller.Stats;
import com.example.pbl3_1.entity.Seller;

import java.util.Date;
import java.util.List;

public interface SellerDAO {
    SellerDTO getShopById(Long id);
    Boolean isFollowed(Long sellerId, Long userId);
    List<ProductPreviewDTO> getMostViewedProducts(Long id, Integer offset, Integer limit, String priceSortBy);
    List<ProductPreviewDTO> getShopByTimeDESC(Long id, Integer offset, Integer limit, String priceSortBy);
    Long addShop(Seller seller);
    Seller findBySellerId(Long id);

    Long getIdByUserId(Long userId);

    Stats getStatistic(Long sellerId, Date startDate, Date endDate);

    List<Stats> getStatisticByYear(Long sellerId, int year);

    java.util.Date getShopCreatedAtByID(Long sellerId);
}
