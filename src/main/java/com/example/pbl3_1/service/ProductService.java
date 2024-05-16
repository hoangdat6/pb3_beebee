package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.Seller;

import java.util.List;

public interface ProductService {
    Long addProduct(Product product);
    List<ProductPreviewDTO> getProductsForHome();
    ProductDetailDTO getProductDetail(Long id);
    void increaseView(Long id);
    void updateProductImage(Long productId, String images);
    List<String> getSuggestName(String textSearch);
    List<ProductPreviewDTO> getProductsForSearch(String keyword, int minPrice, int maxPrice, String categories);
    List<SellerDTO> getSellersForSearch(String keyword, int minPrice, int maxPrice, String categories);
}
