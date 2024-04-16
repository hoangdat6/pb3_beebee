package com.example.pbl3_1.service;

import com.example.pbl3_1.dao.ShoppingCartDAO;
import com.example.pbl3_1.dao.impl.ShoppingCartDAOImpl;
import com.example.pbl3_1.entity.ShoppingCart;

public class ShoppingCartServiceImpl implements ShoppingCartService{
    private final ShoppingCartDAO shoppingCartDAO = new ShoppingCartDAOImpl();

    @Override
    public Long findByIdUser(Long userId) {

        return shoppingCartDAO.getCartIdByUserId(userId);
    }
}
