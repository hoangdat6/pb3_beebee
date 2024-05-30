package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.cart.CartInfoDTO;
import com.example.pbl3_1.controller.dto.cart.ProductForCartDTO;
import com.example.pbl3_1.controller.dto.cart.ProductItemInfoForCartDTO;
import com.example.pbl3_1.controller.dto.product.ProductForShoppingCartDTO;
import com.example.pbl3_1.controller.dto.product.ShopForCartDTO;
import com.example.pbl3_1.controller.dto.product.VariationDTO;
import com.example.pbl3_1.dao.*;
import com.example.pbl3_1.dao.impl.*;
import com.example.pbl3_1.entity.*;
import com.example.pbl3_1.service.ShoppingCartItemService;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ShoppingCartItemServiceImpl implements ShoppingCartItemService {
    private final ShoppingCartItemDAO shoppingCartItemDAO = new ShoppingCartItemDAOImpl();
    private final ShoppingCartDAO shoppingCartDAO = new ShoppingCartDAOImpl();
    private final ProductItemDAO productItemDAO = new ProductItemDAOImpl();
    private  final ProductDAO productDAO = new ProductDAOImpl();
    private  final SellerDAO sellerDAO = new SellerDAOImpl();
    private  final VariationOptionDAO variationOptionDAO= new VariationOptionDAOImpl();
    private final VariationDAO variationDAO = new VariationDAOImpl();

    @Override
    public List<ShopForCartDTO> findByIdUser(Long Id) {
        Long ID = shoppingCartDAO.getCartIdByUserId(Id);
        List<ShoppingCartItem> shoppingCartItems =  shoppingCartItemDAO.findByIdCart(ID);
        List<ShopForCartDTO> shopForCartDTOs = new ArrayList<>();

        for(ShoppingCartItem item : shoppingCartItems){
            int check =0;
            ProductItem productItem = productItemDAO.findById(item.getProductItemId());
            Product product = productDAO.getProductById(productItem.getProductId());
            Seller seller = sellerDAO.findBySellerId(product.getSellerId());
            VariationOption variationOption1=null;
            if (productItem.getVariation1() != null ) {
                variationOption1 = variationOptionDAO.getVariationOptionById(productItem.getVariation1());
            }
            Variation variation1 = null;
            if ( variationOption1 != null ) {
                variation1 = variationDAO.getVariationById(variationOption1.getVariationId());
            }
            VariationOption variationOption2=null;
            if (productItem.getVariation2() != null ) {
                variationOption2 = variationOptionDAO.getVariationOptionById(productItem.getVariation2());
            }
            Variation variation2 = null;
            if ( variationOption2 != null ) {
                variation2 = variationDAO.getVariationById(variationOption2.getVariationId());
            }

            for (ShopForCartDTO shop : shopForCartDTOs) {
                if (Objects.equals(shop.getSellerId(), seller.getId())) {
                    check = 1;

                    shop.add(new ProductForShoppingCartDTO(
                            item.getId(),
                            product.getId(),
                            product.getName(),
                            productItem.getImgPath(),
                            (float) (productItem.getPrice()*(1-product.getDiscount() / 100.0)),
                            item.getQuantity(),
                            (variation1 != null) ? variation1.getName() : null,
                            (variationOption1 != null) ? variationOption1.getValue() : null,
                            (variation2 != null) ? variation2.getName() : null,
                            (variationOption2 != null) ? variationOption2.getValue() : null)
                    );
                    break;
                }
            }
            if (check==0){
                shopForCartDTOs.add(new ShopForCartDTO(
                        product.getSellerId(),
                        seller.getAvatarMain(),
                        seller.getShopName(),
                        seller.getIsLocked(),
                        new ProductForShoppingCartDTO(
                                item.getId(),
                                product.getId(),
                                product.getName(),
                                productItem.getImgPath(),
                                (float) (productItem.getPrice() * (1 - product.getDiscount() / 100.0)),
                                item.getQuantity(),
                                (variation1 != null) ? variation1.getName() : null,
                                (variationOption1 != null) ? variationOption1.getValue() : null,
                                (variation2 != null) ? variation2.getName() : null,
                                (variationOption2 != null) ? variationOption2.getValue() : null))
                );
            }
        }
        return shopForCartDTOs;
    }
    public ShoppingCartItem findById(Long id){
        return shoppingCartItemDAO.findById(id);
    }

    @Override
    public Object update(ShoppingCartItem shoppingCartItem) {
        return shoppingCartItemDAO.update(shoppingCartItem);
    }

    @Override
    public void deleteById(Long object) {
        shoppingCartItemDAO.deleteById(object);
    }

    @Override
    public List<CartInfoDTO> getCartsInfoByUserId(Long userId) {
        List<ProductItemInfoForCartDTO> productItemInfoForCartDTOS = shoppingCartItemDAO.getCartInfoByUserId(userId);

        List<CartInfoDTO> cartInfoDTOS = new ArrayList<>();

        Long prevId = -1L;

        for (ProductItemInfoForCartDTO item : productItemInfoForCartDTOS) {
            CartInfoDTO cartInfoDTO = null;
            if (!Objects.equals(item.getShopId(), prevId)) {
                cartInfoDTO = CartInfoDTO.builder()
                        .shopId(item.getShopId())
                        .shopName(item.getShopName())
                        .shopAvatar(item.getShopImg())
                        .isLocked(item.getSellerIsLocked())
                        .productForCartDTOList(new ArrayList<>())
                        .build();
                cartInfoDTOS.add(cartInfoDTO);
            } else {
                cartInfoDTO = cartInfoDTOS.get(cartInfoDTOS.size() - 1);
                if(cartInfoDTO.getProductForCartDTOList() == null) {
                    cartInfoDTO.setProductForCartDTOList(new ArrayList<>());
                }

            }

            ProductForCartDTO productForCartDTO = ProductForCartDTO.builder()
                    .shoppingCartItemId(item.getShoppingCartItemId())
                    .productId(     item.getProductId())
                    .productItemId( item.getProductItemId())
                    .name(          item.getProductName())
                    .imgPath(       item.getImgPath())
                    .price(         item.getPrice())
                    .quantity(      item.getQuantity())
                    .discount(      item.getDiscount())
                    .qtyInStock(    item.getQtyInStock())
                    .isDeleted(     item.getProductIsDeleted())
                    .isOutOfStock(  item.getIsOutOfStock())
                    .isSoldOut(     item.getIsSoldOut())
                    .build();

            List<VariationDTO> variations = variationOptionDAO.getVariationDTOByProductItemId(item.getProductItemId());

            StringBuilder variationsString = new StringBuilder();
            for (int i = 0; i < variations.size(); i++) {
                if(i == variations.size() - 1) {
                    variationsString.append(variations.get(i).getName()).append(": ").append(variations.get(i).getValue());
                    break;
                }
                variationsString.append(variations.get(i).getName()).append(": ").append(variations.get(i).getValue()).append(", ");
            }

            productForCartDTO.setVariations(variationsString.toString());

            cartInfoDTO.getProductForCartDTOList().add(productForCartDTO);

            prevId = item.getShopId();
        }

        return cartInfoDTOS;
    }


}
