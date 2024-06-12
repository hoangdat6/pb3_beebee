package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.ProductSale;
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
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;
import com.example.pbl3_1.entity.myEnum.EOrderStatus;
import com.example.pbl3_1.entity.myEnum.EPaymentMethod;
import com.example.pbl3_1.entity.myEnum.EShippingMethod;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.OrderService;
import com.example.pbl3_1.service.ProductItemService;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public class OrderServiceImpl implements OrderService {
    private final OrderDAO orderDAO = new OrderDAOImpl();
    private final VariationOptionDAO variationOptionDAO = new VariationOptionDAOImpl();
    private final AddressService addressService = new AddressServiceImpl();
    private final ProductItemService productItemService =  new ProductItemServiceImpl();

    @Override
    public List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId) {
        List<ProductForCheckOut> productForShoppingCartDTOS = orderDAO.getProductByOrderList(shoppingCartItemId);

        for (ProductForCheckOut productForCheckOut : productForShoppingCartDTOS) {
            List<VariationDTO> variationDTO = variationOptionDAO.getVariationDTOByProductItemId(productForCheckOut.getProductItemId());
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
    public String createOrder(List<CartInfoDTO> checkOutInfoDTO, Long addressId, EShippingMethod shippingMethod, EPaymentMethod paymentMethod, Long userId) throws SQLException {
        Boolean isOutOfStock = false;
        Boolean isSoldOut = false;
        StringBuilder ids = new StringBuilder();
        Address address = addressService.getAddressById(addressId);

        for(CartInfoDTO checkOutInfo : checkOutInfoDTO) {
            for(ProductForCartDTO productForCartDTO : checkOutInfo.getProductForCartDTOList()) {
                Integer quantityInStock =
                        orderDAO.getQuantityInStock(productForCartDTO.getProductItemId());

                if(quantityInStock == 0) {
                    productForCartDTO.setIsSoldOut(true);
                    isSoldOut = true;
                }

                if(productForCartDTO.getQuantity() > quantityInStock) {
                    productForCartDTO.setIsOutOfStock(true);
                    isOutOfStock = true;
                }
            }
        }

        if(isOutOfStock || isSoldOut) {
            if(isOutOfStock) {
                throw new RuntimeException("Đã có sản phẩm hết hàng");
            }

            throw new RuntimeException("Đã có sản phẩm bán hết");

        }else {
            List<Order> orders = new ArrayList<>();
            List<List<OrderDetail>> lists = new ArrayList<>();
            for(CartInfoDTO checkOutInfo : checkOutInfoDTO) {
                Order order = Order.builder()
                        .phone(address.getPhone())
                        .fullName(address.getFullname())
                        .communeAddress(address.getWard())
                        .detailAddress(address.getDetail())
                        .districtAddress(address.getDistrict())
                        .provinceAddress(address.getProvince())
                        .shippingMethodId(shippingMethod.getValue())
                        .paymentMethodId(paymentMethod.getValue())
                        .orderStatusId(
                                paymentMethod != EPaymentMethod.THANH_TOAN_KHI_NHAN_HANG
                                        ? EOrderStatus.CHO_THANH_TOAN.getValue()
                                        : EOrderStatus.CHO_XAC_NHAN.getValue()
                        ).userId(userId)
                        .sellerId(checkOutInfo.getShopId())
                        .build();


                List<OrderDetail> orderDetails = new ArrayList<>();
                long totalPrice = 0L;
                for(ProductForCartDTO productForCartDTO : checkOutInfo.getProductForCartDTOList()) {
                    OrderDetail orderDetail = OrderDetail.builder()
                            .productItemId(productForCartDTO.getProductItemId())
                            .quantity(productForCartDTO.getQuantity())
                            .unitPrice((int) Math.round(productForCartDTO.getPrice() * (1 - productForCartDTO.getDiscount() / 100.0)))
                            .build();

                    totalPrice += Math.round(productForCartDTO.getPrice() * (1 - productForCartDTO.getDiscount() / 100.0)) * productForCartDTO.getQuantity();
                    orderDetails.add(orderDetail);
                }


                order.setId(createOrderId(order, orderDetails));
                order.setTotal(totalPrice);

                orders.add(order);
                lists.add(orderDetails);
                ids.append(order.getId()).append("d");
            }

            try {
                orderDAO.createOrders(orders, lists);
                productItemService.updateStocks(lists);
            }catch (SQLException e) {
//                e.printStackTrace();
                throw new SQLException();
            }

            ids.deleteCharAt(ids.length() - 1);
        }

        return ids.toString();
    }

    @Override
    public List<ProductSale> getSaleByOrderId(String orderId) {
        return orderDAO.getSaleByOrderId(orderId);
    }

    private String createOrderId(Order order, List<OrderDetail> orderDetails) {
        StringBuilder code = new StringBuilder();

        // lấy thời gian hiện tại theo millisecond
        String currentTime = System.currentTimeMillis() + "";

        // lấy 11 chữ số trong đó;
        currentTime = currentTime.substring(4);
        String formattedNumber = String.format("%06d", order.getSellerId());

        code.append(formattedNumber).append(order.getUserId()).append(orderDetails.size());

        code.append(currentTime);

        return code.toString();
    }
}
