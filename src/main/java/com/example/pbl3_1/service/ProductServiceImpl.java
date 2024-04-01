package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductForHomeDTO;
import com.example.pbl3_1.dao.CategoryDAO;
import com.example.pbl3_1.dao.ProductDAO;
import com.example.pbl3_1.dao.ProductItemDAO;
import com.example.pbl3_1.dao.VariationDAO;
import com.example.pbl3_1.dao.impl.CategoryDAOImpl;
import com.example.pbl3_1.dao.impl.ProductDAOImpl;
import com.example.pbl3_1.dao.impl.ProductItemDAOImpl;
import com.example.pbl3_1.dao.impl.VariationDAOImpl;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.Variation;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
    private final ProductDAO productDAO = new ProductDAOImpl();
    private final CategoryDAO categoryDAO = new CategoryDAOImpl();
    private final VariationService variationService = new VariationServiceImpl();
    private final ProductItemDAO productItemDAO = new ProductItemDAOImpl();

    @Override
    public List<ProductForHomeDTO> getProductsForHome() {
        List<ProductForHomeDTO> productForHomeDTOS = productDAO.getProductForHomeDtos();
        return productForHomeDTOS;
    }

    @Override
    public ProductDetailDTO getProductDetail(Long id) {
        ProductDetailDTO productDetailDTO = productDAO.getProductDetailById(id);
        List<Variation> variations = variationService.getVariationsByProductId(id);
        List<String> imgPaths = productItemDAO.getImgPathByProductId(id);
        imgPaths.add(0, productDetailDTO.getProductImgPath().get(0));

        productDetailDTO.setVariations(variations);
        productDetailDTO.setProductImgPath(imgPaths);

        return productDetailDTO;
    }
}
