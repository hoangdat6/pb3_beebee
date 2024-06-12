package com.example.pbl3_1.dao;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductManagementDTO;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.product.UserOrderProductDTO;
import com.example.pbl3_1.controller.dto.seller.SellerDTO;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;

import java.util.List;

public interface ProductDAO extends CommonDAO<Product>{
    Product getProductById(Long id);
    List<Product> getProducts();
    List<ProductPreviewDTO> getProductForHomeDtos(Integer page, Integer size);
    ProductDetailDTO getProductDetailById(Long id);
    void increaseView(Long id);
    Long addProduct(Product product);
    List<String> getSuggestName(String textSearch);
    void updateProductImage(Long productId, String images);
    List<ProductPreviewDTO> getProductsForSearch(String keyword, int minPrice, int maxPrice, String categories, int page, int size);
    List<SellerDTO> getSellersForSearch(String keyword, int minPrice, int maxPrice, String categories);
    int getSearchTotalPage(String keyword, int minPrice, int maxPrice, String categories);
    List<Category> getAllCategories();
    List<ProductManagementDTO> getProductManagement(Long sellerId, int idCategory, String searchValue, int page, int size, int status);
    List<Category> getCategoriesbyIdShop(Long idShop);
    int getProductManagementTotalPage(Long sellerId, int idCategory, String searchValue, int status);
    void deleteProduct(Long idProduct);
    List<UserOrderProductDTO> getUserOrderProduct(Long idUser, int status);

    List<ProductPreviewDTO> getTopProductsForHome(int i, int i1);
    void changeOrder(String idOrder, int changeId);

}
