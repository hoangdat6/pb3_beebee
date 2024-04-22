package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.dao.SellerDAO;
import com.example.pbl3_1.dao.impl.SellerDAOImpl;
import com.example.pbl3_1.service.SellerService;

import java.util.List;

public class SellerServiceImpl implements SellerService {
    private final SellerDAO sellerDAO = new SellerDAOImpl();

    @Override
    public Object getShopById(Long id, Long userId) {
        Boolean isFollowed = sellerDAO.isFollowed(id, userId);
        SellerDTO sellerDTO = sellerDAO.getShopById(id);
        List<ProductPreviewDTO> products = sellerDAO.getMostViewedProducts(id, 0, 5, "desc");

        // set main image for each product
        for(ProductPreviewDTO productPreviewDTO : products) {
            productPreviewDTO.setMainImage();
        }
        sellerDTO.setMostViewedProducts(products);
        sellerDTO.setIsFollowed(isFollowed);
        return sellerDTO;
    }

    @Override
    public List<ProductPreviewDTO> getShopByTimeDESC(Long id, Integer offset, Integer limit, String priceSortBy) {
        List<ProductPreviewDTO> productCtime = sellerDAO.getShopByTimeDESC(id, offset, limit, priceSortBy);

        for(ProductPreviewDTO product : productCtime){
            product.setMainImage();
        }

        return productCtime;
    }

    @Override
    public List<ProductPreviewDTO> getShopByPopDESC(Long id, Integer offset, Integer limit, String priceSortBy) {
        List<ProductPreviewDTO> productPop = sellerDAO.getMostViewedProducts(id, offset, limit, priceSortBy);

        for(ProductPreviewDTO product : productPop){
            product.setMainImage();
        }

        return productPop;
    }
}
