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
    private boolean isProductOfSeller;
    private List<Variation> variations;
    private boolean available;


    public ProductDetailDTO(){

    }

    public boolean getIsProductOfSeller() {
        return isProductOfSeller;
    }
}
