package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.Seller;

import java.util.List;

public interface SellerDAO {
    SellerDTO getShopById(Long id);
    Boolean isFollowed(Long userId, Long sellerId);
    List<ProductPreviewDTO> getMostViewedProducts(Long id, Integer offset, Integer limit, String priceSortBy);
    List<ProductPreviewDTO> getShopByTimeDESC(Long id, Integer offset, Integer limit, String priceSortBy);
    Long addShop(Seller seller);
    public Seller findBySellerId(Long id);

}
