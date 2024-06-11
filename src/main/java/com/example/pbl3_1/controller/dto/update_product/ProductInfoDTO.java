package com.example.pbl3_1.controller.dto.update_product;

import com.example.pbl3_1.controller.dto.product.VariationDTO;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.ProductItem;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductInfoDTO {
    Long id;
    String name;
    String description;
    List<String> imgPaths;
    Category category;
    List<ProductItem> productItems;
    List<VariationAllDTO> variations;
}
