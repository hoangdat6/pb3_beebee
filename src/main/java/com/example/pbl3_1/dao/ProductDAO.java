package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.entity.Product;

import java.util.List;

public interface ProductDAO extends CommonDAO<Product>{
    Product getProductById(Long id);
    List<Product> getProducts();
    List<ProductPreviewDTO> getProductForHomeDtos();
    ProductDetailDTO getProductDetailById(Long id);
    void increaseView(Long id);
    Long addProduct(Product product);

    void updateProductImage(Long productId, String images);
}
