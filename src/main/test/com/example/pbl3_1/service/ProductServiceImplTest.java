package com.example.pbl3_1.service;

import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.entity.ProductItem;
import org.junit.Assert;
import org.junit.Test;

import java.util.List;

public class ProductServiceImplTest {
    @Test
    public void testAddProduct() {
        ProductService productService = new ProductServiceImpl();
        VariationService variationService = new VariationServiceImpl();
        VariationOptionService variationOptionService = new VariationOptionServiceImpl();
        ProductItemService productItemService = new ProductItemServiceImpl();

        Product product = Product.builder().name("test1").build();
        Long productId = productService.addProduct(product);

        ProductItem productItem1 = ProductItem.builder().productId(2L).productImgPath("test2").variation1(1L).variation2(2L).qtyInStock(10).price(1000F).build();
        ProductItem productItem2 = ProductItem.builder().productId(2L).productImgPath("test3").variation1(1L).variation2(2L).qtyInStock(10).price(1000F).build();
        ProductItem productItem3 = ProductItem.builder().productId(2L).productImgPath("test4").variation1(1L).variation2(2L).qtyInStock(10).price(1000F).build();
        Object id = productItemService.addProductItems(
                List.of(productItem1, productItem2, productItem3)
        );

        Assert.assertNotNull(id);
    }
}
