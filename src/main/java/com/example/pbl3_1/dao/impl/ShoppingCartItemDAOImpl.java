package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.cart.ProductItemInfoForCartDTO;
import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.ShoppingCartItemDAO;
import com.example.pbl3_1.entity.ShoppingCartItem;
import com.example.pbl3_1.mapper.ShoppingCartItemMapper;

import java.sql.SQLException;
import java.util.List;

public class ShoppingCartItemDAOImpl implements ShoppingCartItemDAO {
    GenericDAO<ShoppingCartItem> genericDAO = new AbstractDAOImpl<>();
    @Override
    public Long save(ShoppingCartItem object) {
        String sql = "INSERT INTO shop_bee.shopping_cart_item (cart_id, product_item_id, quantity, created_at) VALUES (?, ?, ?, ?)";
        return genericDAO.save(sql,
                object.getCartId(),
                object.getProductItemId(),
                object.getQuantity(),
                object.getCreatedAt());
    }

    @Override
    public Object update(ShoppingCartItem object) {
        String sql = "UPDATE shop_bee.shopping_cart_item SET cart_id = ?, product_item_id = ?, quantity = ?, created_at = ? WHERE id = ?";
        return genericDAO.update(sql,
                object.getCartId(),
                object.getProductItemId(),
                object.getQuantity(),
                object.getCreatedAt(),
                object.getId());
    }


    @Override
    public void deleteById(Long object) {
        String sql = "DELETE FROM shopping_cart_item where id = ?";
        genericDAO.delete(sql, object);
    }

    @Override
    public ShoppingCartItem findById(int id) {
        return null;
    }

    @Override
    public ShoppingCartItem findById(Long id) {
        String sql = "SELECT * FROM shopping_cart_item WHERE id = ? ";
        List<ShoppingCartItem> list= genericDAO.query(sql,new ShoppingCartItemMapper(),id);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public ShoppingCartItem findByCartIAndProductItemId(Long cartId, Long productItemId) {
        String sql = "SELECT id, quantity FROM shop_bee.shopping_cart_item WHERE cart_id = ? AND product_item_id = ?";
        List<ShoppingCartItem> cartItems = genericDAO.query(sql, resultSet -> {
            try {
                return  ShoppingCartItem.builder().
                        id(resultSet.getLong("id")).
                        quantity(resultSet.getInt("quantity")).
                        build();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, cartId, productItemId);
        return cartItems.isEmpty() ? null : cartItems.get(0);
    }

    @Override
    public List<ShoppingCartItem> findByIdCart(Long Id) {
        String sql = "SELECT * FROM shopping_cart_item WHERE cart_id =? ";
        return genericDAO.query(sql,new ShoppingCartItemMapper(),Id);
    }

    @Override
    public List<ProductItemInfoForCartDTO> getCartInfoByUserId(Long userId) {
        StringBuilder sql =  new StringBuilder("select\n");
        sql.append("    s.id as seller_id,\n");
        sql.append("    s.shop_name as seller_name,\n");
        sql.append("    s.avatar as img_path,\n");
        sql.append("    s.is_locked as is_locked,\n");
        sql.append("    sci.id as shopping_cart_item_id,\n");
        sql.append("    p.id as product_id,\n");
        sql.append("    p.name as product_name,\n");
        sql.append("    p.discount as product_discount,\n");
        sql.append("    p.is_deleted as product_is_deleted,\n");
        sql.append("    pi.id as product_item_id,\n");
        sql.append("    pi.price as product_price,\n");
        sql.append("    pi.qty_in_stock as product_qty_in_stock,\n");
        sql.append("    pi.img_path as product_item_img_path,\n");
        sql.append("    sci.quantity as quantity,\n");
        sql.append("    (quantity > pi.qty_in_stock) as is_out_of_stock,\n");
        sql.append("    (pi.qty_in_stock = 0) as is_sold_out\n");
        sql.append("    from shopping_cart sc\n");
        sql.append("join shopping_cart_item sci on sc.id = sci.cart_id\n");
        sql.append("join product_item pi on sci.product_item_id = pi.id\n");
        sql.append("join products p on pi.product_id = p.id\n");
        sql.append("join sellers s on p.seller_id = s.id\n");
        sql.append( "where sc.user_id = ?\n");
        sql.append( "order by s.id;");

        return genericDAO.query(sql.toString(), resultSet -> {
            try {
                return ProductItemInfoForCartDTO.builder()
                        .shopId(resultSet.getLong("seller_id"))
                        .shopName(resultSet.getString("seller_name"))
                        .shopImg(resultSet.getString("img_path").split(",")[0])
                        .sellerIsLocked(resultSet.getBoolean("is_locked"))
                        .shoppingCartItemId(resultSet.getLong("shopping_cart_item_id"))
                        .productId(resultSet.getLong("product_id"))
                        .productName(resultSet.getString("product_name"))
                        .discount(resultSet.getInt("product_discount"))
                        .productIsDeleted(resultSet.getBoolean("product_is_deleted"))
                        .productItemId(resultSet.getLong("product_item_id"))
                        .price(resultSet.getInt("product_price"))
                        .qtyInStock(resultSet.getInt("product_qty_in_stock"))
                        .imgPath(resultSet.getString("product_item_img_path"))
                        .quantity(resultSet.getInt("quantity"))
                        .isOutOfStock(resultSet.getBoolean("is_out_of_stock"))
                        .isSoldOut(resultSet.getBoolean("is_sold_out"))
                        .build();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }, userId);
    }
}