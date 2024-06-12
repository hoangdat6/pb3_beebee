package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.DateWrapper.DateWrapper;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.seller.SellerDTO;
import com.example.pbl3_1.controller.dto.seller.StatisticOverview;
import com.example.pbl3_1.controller.dto.seller.Stats;
import com.example.pbl3_1.dao.SellerDAO;
import com.example.pbl3_1.dao.SellerFollowDAO;
import com.example.pbl3_1.dao.impl.SellerDAOImpl;
import com.example.pbl3_1.dao.impl.SellerFollowDAOImpl;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.myEnum.ERole;
import com.example.pbl3_1.entity.Seller;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.DateRangeCalculator;
import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.UserService;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

public class SellerServiceImpl implements SellerService {
    private final SellerDAO sellerDAO = new SellerDAOImpl();
    private final SellerFollowDAO sellerFollowDAO = new SellerFollowDAOImpl();
    private final DateRangeCalculator dateRangeCalculator = new DateRangeCalculatorImpl();

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

    @Override
    public Stats getStatistic(Long sellerId) {
        // Lấy ngày hiện tại
        Calendar cal = Calendar.getInstance();

        // Đặt ngày đầu tuần là Thứ Hai
        cal.setFirstDayOfWeek(Calendar.MONDAY);

        // Tìm ngày đầu tuần
        cal.set(Calendar.DAY_OF_WEEK, cal.getFirstDayOfWeek());
        Date startTime = new Date(cal.getTimeInMillis());

        // Tìm ngày cuối tuần
        cal.add(Calendar.DATE, 6);
        Date endTime = new Date(cal.getTimeInMillis());
        return sellerDAO.getStatistic(sellerId, startTime, endTime);
    }

    @Override
    public List<Stats> getStatisticByYear(Long sellerId, Integer year){
        return sellerDAO.getStatisticByYear(sellerId, year);
    }

    @Override
    public StatisticOverview getStatisticOverview(Long sellerId, Integer timeType) {
        StatisticOverview statisticOverview;
        int dateDecrese = 0;
        DateWrapper startTime = new DateWrapper(null), endTime = new DateWrapper(null);
        switch (timeType) {
            case 0:
                dateRangeCalculator.WeekRange(new Date(System.currentTimeMillis()), startTime, endTime);
                dateDecrese = 7;
                break;
            case 1:
                dateRangeCalculator.MonthRange(new Date(System.currentTimeMillis()), startTime, endTime);
                dateDecrese = 30;
                break;
            case 2:
                dateRangeCalculator.YearRange(new Date(System.currentTimeMillis()), startTime, endTime);
                dateDecrese = 365;
                break;
            default:
                System.out.println("Invalid time type!");
        }
        Stats currentStats = sellerDAO.getStatistic(sellerId, startTime.getDate(), endTime.getDate());
        java.util.Date lastStartDay = dateRangeCalculator.subtractDays(startTime.getDate(), dateDecrese);
        java.util.Date lastEndDay = dateRangeCalculator.subtractDays(endTime.getDate(), dateDecrese);
        Stats lastStats = sellerDAO.getStatistic(sellerId, new Date(lastStartDay.getTime()), new Date(lastEndDay.getTime()));
        statisticOverview = new StatisticOverview(currentStats, lastStats);
        return statisticOverview;
    }

    @Override
    public java.util.Date getShopCreatedAtByID(Long sellerId) {
        return sellerDAO.getShopCreatedAtByID(sellerId);
    }
}
