package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.dao.SellerDAO;
import com.example.pbl3_1.dao.SellerFollowDAO;
import com.example.pbl3_1.dao.impl.SellerDAOImpl;
import com.example.pbl3_1.dao.impl.SellerFollowDAOImpl;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.ERole;
import com.example.pbl3_1.entity.Seller;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.UserService;

import java.util.List;

public class SellerServiceImpl implements SellerService {
    private final SellerDAO sellerDAO = new SellerDAOImpl();
    private final SellerFollowDAO sellerFollowDAO = new SellerFollowDAOImpl();

    @Override
    public Object getShopById(Long id, Long userId) {
        try {
            Boolean isFollowed = sellerDAO.isFollowed(id, userId);
            SellerDTO sellerDTO = sellerDAO.getShopById(id);
            List<ProductPreviewDTO> products = sellerDAO.getMostViewedProducts(id, 0, 5, "desc");

            // lấy ra list ảnh
            List<String> images = List.of(sellerDTO.getAvatar().split(","));
            sellerDTO.setAvatar(images.get(0)); // ảnh đầu tiên là avatar
            sellerDTO.setCoverImage(images.get(1)); // ảnh thứ là ảnh bìa

            // set main image for each product
            for(ProductPreviewDTO productPreviewDTO : products) {
                productPreviewDTO.setMainImage();
            }
            sellerDTO.setMostViewedProducts(products);
            sellerDTO.setIsFollowed(isFollowed);
            return sellerDTO;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
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

    @Override
    public Long addShop(Seller seller, Address address) {
        AddressService addressService = new AddressServiceImpl();
        Long addressId = addressService.addAddress(address);
        seller.setAddressId(addressId);
        UserService userService = new UserServiceImpl();
        userService.updateRole(seller.getUserId(), ERole.SELLER);
        return sellerDAO.addShop(seller);
    }

    @Override
    public void updateIsFollowed(Long sellerId, Long userId,  Boolean isFollowed) {
        if(isFollowed){
            sellerFollowDAO.removeFollow(sellerId, userId);
        }else {
            sellerFollowDAO.addFollow(sellerId, userId);
        }
    }

    @Override
    public Long getIdByUserId(Long userId) {
        return sellerDAO.getIdByUserId(userId);
    }
}
