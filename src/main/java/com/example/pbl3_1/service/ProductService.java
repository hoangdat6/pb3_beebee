package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductForHomeDTO;

import java.util.List;

public interface ProductService {
    public List<ProductForHomeDTO> getProductsForHome();
    public ProductDetailDTO getProductDetail(Long id);
}
