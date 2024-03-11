package com.example.pbl3_1.service;

import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.controller.dto.product.ProductForHomeDTO;
import com.example.pbl3_1.dao.CategoryDAO;
import com.example.pbl3_1.dao.ProductDAO;
import com.example.pbl3_1.dao.VariationDAO;
import com.example.pbl3_1.dao.impl.CategoryDAOImpl;
import com.example.pbl3_1.dao.impl.ProductDAOImpl;
import com.example.pbl3_1.dao.impl.VariationDAOImpl;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.Variation;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService{
    private final ProductDAO productDAO = new ProductDAOImpl();
    private final CategoryDAO categoryDAO = new CategoryDAOImpl();
    private final VariationDAO variationDAO = new VariationDAOImpl();

    @Override
    public List<ProductForHomeDTO> getProductsForHome() {
        List<Product> products = productDAO.getProducts();

        List<ProductForHomeDTO> productForHomeDTOS = new ArrayList<>();

        for (Product product : products) {
            ProductForHomeDTO productForHomeDTO = new ProductForHomeDTO(
                    product.getId(),
                    product.getName(),
                    product.getPrice(),
                    product.getDiscount(),
                    product.getProductImgPath()
            );
            productForHomeDTOS.add(productForHomeDTO);
        }
        return productForHomeDTOS;
    }

    @Override
    public ProductDetailDTO getProductDetail(Long id) {
        Product product = productDAO.getProductById(id);
        Category category = categoryDAO.findById(product.getCategoryId().getId());
        List<Variation> variations = variationDAO.getVariationsByProductId(id);

        return new ProductDetailDTO(product, category, null, variations);
    }
}
