package com.example.pbl3_1.service;

import com.example.pbl3_1.dao.ShoppingCartDAO;
import com.example.pbl3_1.dao.ShoppingCartItemDAO;
import com.example.pbl3_1.dao.ProductItemDAO;
import com.example.pbl3_1.dao.impl.ShoppingCartDAOImpl;
import com.example.pbl3_1.dao.impl.ShoppingCartItemDAOImpl;
import com.example.pbl3_1.dao.impl.ProductItemDAOImpl;
import com.example.pbl3_1.entity.ShoppingCartItem;

import java.sql.Timestamp;
import java.util.Objects;

public class CartItemServiceImpl implements CartItemService{
    ShoppingCartItemDAO cartItemDAO = new ShoppingCartItemDAOImpl();
    ProductItemDAO productItemDAO = new ProductItemDAOImpl();
    private final ShoppingCartDAO shoppingCartDAO = new ShoppingCartDAOImpl();

    @Override
    public Object saveToCart(String variation1, String variation2, int i, Long userId) {
        Long productItemId;
        if(!Objects.equals(variation1, "")){
            if(!Objects.equals(variation2, ""))
                // add to cart with 2 variations
                productItemId = productItemDAO.getProductItemIdByVariations(Long.parseLong(variation1), Long.parseLong(variation2));
            else
                // add to cart with 1 variation
                productItemId = productItemDAO.getProductItemIdByVariations(Long.parseLong(variation1), null);
        }else {
            // add to cart without variation
            productItemId = productItemDAO.getProductItemIdByVariations(null, null);
        }

        Long cartId = shoppingCartDAO.getCartIdByUserId(userId);
        // If the user's shopping cart does not exist, then create a shopping cart for the user.
        if(cartId == null){
            cartId = shoppingCartDAO.createCart(userId);
        }

        ShoppingCartItem cartItemId = cartItemDAO.findByCartIAndProductItemId(cartId, productItemId);

        if(cartItemId != null){
             return cartItemDAO.update(ShoppingCartItem.builder().
                    id(cartItemId.getId()).
                    CartId(cartId).
                    ProductItemId(productItemId).
                    quantity(cartItemId.getQuantity() + i).
                    createdAt(new Timestamp(System.currentTimeMillis())).
                    build());
        }else {
            return cartItemDAO.save(ShoppingCartItem.builder().
                    CartId(cartId).
                    ProductItemId(productItemId).
                    quantity(i).
                    createdAt(new Timestamp(System.currentTimeMillis())).
                    build());
        }
    }
}
