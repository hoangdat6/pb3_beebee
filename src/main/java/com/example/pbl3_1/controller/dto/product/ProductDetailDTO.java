package com.example.pbl3_1.controller.dto.product;

import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.Seller;
import com.example.pbl3_1.entity.Variation;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
public class ProductDetailDTO {
    private Long id;
    private String name;
    private Float price;
    private Float discount;
    private String productImgPath;
    private String description;
    private int categoryId;
    private String categoryName;
    private Long sellerId;
    private String sellerName;
    private String sellerAvatar;
    private List<Variation> variations;

    public ProductDetailDTO(){

    }

    public ProductDetailDTO(Product product, Category category, Seller seller, List<Variation> variations){
        this.id = product.getId();
        this.name = product.getName();
        this.price = product.getPrice();
        this.discount = product.getDiscount();
        this.productImgPath = product.getProductImgPath();
        this.description = product.getDescription();
        this.categoryId = category.getId();
        this.categoryName = category.getName();
//        this.sellerId = seller.getId();
//        this.sellerName = seller.getShopName();
//        this.sellerAvatar = seller.getImgPath();
        this.variations = variations;
    }
}
