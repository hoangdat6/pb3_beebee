package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductForHomeDTO;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.Variation;
import com.example.pbl3_1.entity.VariationOption;

import java.util.List;

public interface ProductDAO extends CommonDAO<Product>{
    Product getProductById(Long id);
    List<Product> getProducts();
    List<ProductForHomeDTO> getProductForHomeDtos();
    ProductDetailDTO getProductDetailById(Long id);
    void increaseView(Long id);
}
