package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.cart.CartInfoDTO;
import com.example.pbl3_1.controller.dto.cart.ProductForCartDTO;
import com.example.pbl3_1.controller.dto.cart.ProductItemInfoForCartDTO;
import com.example.pbl3_1.controller.dto.checkout.CheckOutInfoDTO;
import com.example.pbl3_1.controller.dto.checkout.ProductForCheckOut;
import com.example.pbl3_1.controller.dto.product.VariationDTO;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.dao.VariationOptionDAO;
import com.example.pbl3_1.dao.impl.OrderDAOImpl;
import com.example.pbl3_1.dao.impl.VariationOptionDAOImpl;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;
import com.example.pbl3_1.service.OrderService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public class OrderServiceImpl implements OrderService {
    OrderDAO orderDAO = new OrderDAOImpl();
    VariationOptionDAO variationOptionDAO = new VariationOptionDAOImpl();

    @Override
    public List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId) {
        List<ProductForCheckOut> productForShoppingCartDTOS = orderDAO.getProductByOrderList(shoppingCartItemId);

        for (ProductForCheckOut productForCheckOut : productForShoppingCartDTOS) {
            List<VariationDTO> variationDTO = variationOptionDAO.getVariationDTOByProductItemId(productForCheckOut.getProductItemId());
//            productForCheckOut.setVariations(variationDTO);
            StringBuilder variations = new StringBuilder();
            for (VariationDTO variationDTO1 : variationDTO) {
                variations.append(variationDTO1.getName()).append(": ").append(variationDTO1.getValue()).append(", ");
            }
            System.out.println(variations.toString());
            productForCheckOut.setVariations(variations.toString());
        }
        

        return productForShoppingCartDTOS;
    }

    @Override
    public Long addOrder(Order addressOrder, List<OrderDetail> orderDetails) {
        return null;
    }

    @Override
    public List<CartInfoDTO> getCartInfoDTO(List<Long> shoppingCartItemId) {
        List<ProductItemInfoForCartDTO> productItemInfoForCartDTOS = orderDAO.getCartInfoByUserId(shoppingCartItemId);

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

    @Override
    public void getOrderListByID(int i) {

    }

}
