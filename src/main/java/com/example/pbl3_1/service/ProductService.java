package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductForHomeDTO;
import com.example.pbl3_1.entity.Product;

import java.util.List;

public interface ProductService {
    Long addProduct(Product product);
    List<ProductForHomeDTO> getProductsForHome();
    ProductDetailDTO getProductDetail(Long id);
}
