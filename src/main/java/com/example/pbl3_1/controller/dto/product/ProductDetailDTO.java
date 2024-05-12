package com.example.pbl3_1.controller.dto.product;

import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.Seller;
import com.example.pbl3_1.entity.Variation;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@AllArgsConstructor
public class ProductDetailDTO {
    private Long id;
    private String name;
    private Integer maxPrice;
    private Integer minPrice;
    private Integer discount;
    private List<String> imgPath;
    private String description;
    private int categoryId;
    private String categoryName;
    private Long sellerId;
    private String sellerName;
    private String sellerAvatar;
    private int quantity;
    private List<Variation> variations;


    public ProductDetailDTO(){

    }

    public ProductDetailDTO(Product product, List<String> imgPath, Map.Entry<Integer, Integer> maxAndMinPrice, Category category, int quantity, Seller seller, List<Variation> variations){
        this.id = product.getId();
        this.name = product.getName();
        this.maxPrice = maxAndMinPrice.getKey();
        this.minPrice = maxAndMinPrice.getValue();
        this.discount = product.getDiscount();
        this.imgPath = imgPath;
        this.description = product.getDescription();
        this.categoryId = category.getId();
        this.categoryName = category.getName();
        this.quantity = quantity;
        this.sellerId = seller.getId();
        this.sellerName = seller.getShopName();
        this.sellerAvatar = seller.getAvatarMain();
        this.variations = variations;
    }
}
