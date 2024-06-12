package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.product.*;
import com.example.pbl3_1.controller.dto.seller.SellerDTO;
import com.example.pbl3_1.dao.CategoryDAO;
import com.example.pbl3_1.dao.ProductDAO;
import com.example.pbl3_1.dao.ProductItemDAO;
import com.example.pbl3_1.dao.impl.CategoryDAOImpl;
import com.example.pbl3_1.dao.impl.ProductDAOImpl;
import com.example.pbl3_1.dao.impl.ProductItemDAOImpl;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.Variation;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.VariationService;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private final ProductDAO productDAO = new ProductDAOImpl();
    private final CategoryDAO categoryDAO = new CategoryDAOImpl();
    private final VariationService variationService = new VariationServiceImpl();
    private final ProductItemDAO productItemDAO = new ProductItemDAOImpl();

    @Override
    public Long addProduct(Product product) {
        return productDAO.addProduct(product);
    }

    @Override
    public List<ProductPreviewDTO> getProductsForHome() {
        return productDAO.getProductForHomeDtos();
    }

    @Override
    public ProductDetailDTO getProductDetail(Long id) {
        ProductDetailDTO productDetailDTO = productDAO.getProductDetailById(id);
        if(productDetailDTO == null){
            return null;
        }
        List<Variation> variations = variationService.getVariationsByProductId(id);
        List<String> imgPaths = productItemDAO.getImgPathByProductId(id);

        String[] imgPath = productDetailDTO.getImgPath().get(0).split(",");
        imgPaths.addAll(0, Arrays.asList(imgPath));

        productDetailDTO.setVariations(variations);
        productDetailDTO.setImgPath(imgPaths);
        increaseView(id);

        return productDetailDTO;
    }

    @Override
    public void increaseView(Long id) {
        productDAO.increaseView(id);
    }

    @Override
    public void updateProductImage(Long productId, String images) {
        productDAO.updateProductImage(productId, images);
    }

    @Override
    public List<String> getSuggestName(String textSearch) {
        return productDAO.getSuggestName(textSearch);
    }

    @Override
    public List<ProductPreviewDTO> getProductsForSearch(String keyword, int minPrice, int maxPrice, String categories, int page, int size) {
        return productDAO.getProductsForSearch(keyword, minPrice, maxPrice, categories, page, size);
    }

    @Override
    public List<SellerDTO> getSellersForSearch(String keyword, int minPrice, int maxPrice, String categories) {
        return productDAO.getSellersForSearch(keyword, minPrice, maxPrice, categories);
    }

    @Override
    public int getSearchTotalPage(String keyword, int minPrice, int maxPrice, String categories) {
        return productDAO.getSearchTotalPage(keyword, minPrice, maxPrice, categories);
    }
    @Override
    public List<Category> getAllCategories() {
        return productDAO.getAllCategories();
    }

    @Override
    public List<ProductManagementDTO> getProductManagement(Long sellerId, int idCategory, String searchValue, int page, int size, int status) {
        return productDAO.getProductManagement(sellerId, idCategory, searchValue, page, size, status);
    }
    @Override
    public List<Category> getCategoriesbyIdShop(Long idShop){
        return productDAO.getCategoriesbyIdShop(idShop);
    }
    @Override
    public void deleteProduct(Long idProduct){
        productDAO.deleteProduct(idProduct);
    }
    @Override
    public int getProductManagementTotalPage(Long sellerId, int idCategory, String searchValue, int status){
        return productDAO.getProductManagementTotalPage(sellerId, idCategory, searchValue, status);
    }
    @Override
    public List<UserOrderProductDTO> getUserOrderProduct(Long userId, int status){
        return productDAO.getUserOrderProduct(userId, status);
    }
    @Override
    public void changeOrder(String orderId, int changeId){
        productDAO.changeOrder(orderId, changeId);
    }

    @Override
    public List<ProductUpdateDTO> getProductUpdate(Long id) {
        return productDAO.getProductUpdate(id);
    }

    @Override
    public void updateProduct(Long id, Integer quantity, Integer price) {
        productDAO.updateProduct(id, quantity, price);
    }
}
