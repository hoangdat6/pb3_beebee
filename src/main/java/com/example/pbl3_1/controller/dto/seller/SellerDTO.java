package com.example.pbl3_1.controller.dto.seller;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import lombok.*;

import java.sql.Timestamp;
import java.util.List;

@Setter
@Getter
@Builder
@AllArgsConstructor
@ToString
public class SellerDTO {
    private Long id;
    private String avatar;
    private String coverImage;
    private String shopName;
    private String province;
    private Integer views;
    private Integer followers;
    private Timestamp createdAt;
    private Boolean isFollowed;
    private Integer countProduct;
    List<ProductPreviewDTO> mostViewedProducts;

    public SellerDTO() {
    }
    public SellerDTO(Long id, String avatar, String shopName, Integer views)
    {
        this.id = id;
        this.avatar = avatar;
        this.shopName = shopName;
        this.views = views;
    }
}
