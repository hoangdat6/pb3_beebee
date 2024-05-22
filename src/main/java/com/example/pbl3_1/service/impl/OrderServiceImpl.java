package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.controller.dto.product.ProductForCheckOut;
import com.example.pbl3_1.controller.dto.product.VariationDTO;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.dao.VariationDAO;
import com.example.pbl3_1.dao.VariationOptionDAO;
import com.example.pbl3_1.dao.impl.OrderDAOImpl;
import com.example.pbl3_1.dao.impl.VariationDAOImpl;
import com.example.pbl3_1.dao.impl.VariationOptionDAOImpl;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;
import com.example.pbl3_1.entity.Variation;
import com.example.pbl3_1.service.OrderService;

import java.util.ArrayList;
import java.util.List;

public class OrderServiceImpl implements OrderService {
    private OrderDAO orderDAO = new OrderDAOImpl();
    private VariationOptionDAO variationOptionDAO = new VariationOptionDAOImpl();
    @Override
    public List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId) {
        List<ProductForCheckOut> productForShoppingCartDTOS = orderDAO.getProductByOrderList(shoppingCartItemId);

        for (ProductForCheckOut productForCheckOut : productForShoppingCartDTOS) {
            List<VariationDTO> variationDTO = variationOptionDAO.getVariationDTOByProductItemId(productForCheckOut.getProductItemId());
            productForCheckOut.setVariations(variationDTO);
        }

        productForShoppingCartDTOS.sort((o1, o2) -> {
            if (o1.getSellerId() > o2.getSellerId()) {
                return 1;
            } else if (o1.getSellerId() < o2.getSellerId()) {
                return -1;
            } else {
                return 0;
            }
        });

        

        return productForShoppingCartDTOS;
    }

    @Override
    public Long addOrder(Order addressOrder, List<OrderDetail> orderDetails) {
//        List<List<OrderDetail>> orderDetailsList = new ArrayList<>();
//        for (OrderDetail orderDetail : orderDetails) {
//
//        }

        return orderDAO.addOrder(addressOrder);
    }
}
