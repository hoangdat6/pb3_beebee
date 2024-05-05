package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.product.SellerDTO;
import com.example.pbl3_1.dao.CategoryDAO;
import com.example.pbl3_1.dao.ProductDAO;
import com.example.pbl3_1.dao.ProductItemDAO;
import com.example.pbl3_1.dao.impl.CategoryDAOImpl;
import com.example.pbl3_1.dao.impl.ProductDAOImpl;
import com.example.pbl3_1.dao.impl.ProductItemDAOImpl;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.Seller;
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
        List<ProductPreviewDTO> productForHomeDTO = productDAO.getProductForHomeDtos();
        for (ProductPreviewDTO product : productForHomeDTO){
            product.setMainImage();
        }
        return productForHomeDTO;
    }

    @Override
    public ProductDetailDTO getProductDetail(Long id) {
        ProductDetailDTO productDetailDTO = productDAO.getProductDetailById(id);
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
    public List<ProductPreviewDTO> getProductsForSearch(String keyword) {
        return productDAO.getProductsForSearch(keyword);
    }

    @Override
    public List<SellerDTO> getSellersForSearch(String keyword) {
        return productDAO.getSellersForSearch(keyword);
    }
}