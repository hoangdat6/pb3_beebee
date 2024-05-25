package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.cart.ProductItemInfoForCartDTO;
import com.example.pbl3_1.controller.dto.checkout.ProductForCheckOut;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.Product;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

public class OrderDAOImpl implements OrderDAO {
    private AbstractDAOImpl<Product> abstractDAO = new AbstractDAOImpl<>();
    @Override
    public List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId) {
        StringBuilder sql = new StringBuilder("select " +
                "       pi.id as product_item_id,\n" +
                "       p.id as product_id,\n" +
                "       p.name as product_name,\n" +
                "       p.discount as discount,\n" +
                "       pi.img_path,\n" +
                "       pi.price as price,\n" +
                "       pi.qty_in_stock as qty_in_stock,\n" +
                "       p.is_deleted as is_deleted,\n" +
                "       sci.quantity as quantity,\n" +
                "from shopping_cart_item as sci\n" +
                "join product_item as pi on sci.product_item_id = pi.id\n" +
                "join products as p on pi.product_id = p.id\n" +
                "where sci.id in (?");

        for (int i = 1; i < shoppingCartItemId.size(); i++) {
            sql.append(", ?");
        }
        sql.append(")");

        List<ProductForCheckOut> productForCheckOuts = abstractDAO.query(sql.toString(), resultSet -> {
            try {
                return ProductForCheckOut.builder().
                        productItemId(resultSet.getLong("product_item_id")).
                        productId(resultSet.getLong("product_id")).
                        name(resultSet.getString("product_name")).
                        discount(resultSet.getInt("discount")).
                        isDeleted(resultSet.getBoolean("is_deleted")).
                        imgPath(resultSet.getString("img_path")).
                        price(resultSet.getFloat("price")).
                        qtyInStock(resultSet.getInt("qty_in_stock")).
                        quantity(resultSet.getInt("quantity")).build();
            }catch (Exception e){
                e.printStackTrace();
                return null;
            }
        }, shoppingCartItemId.toArray());

        return productForCheckOuts;
    }

    @Override
    public Long addOrder(Order addressOrder) {
        StringBuilder sql = new StringBuilder("insert into orders (user_id, \n" +
                "                    order_date, \n" +
                "                    phone,\n" +
                "                    fullname,\n" +
                "                    payment_method_id,\n" +
                "                    shipping_method,\n" +
                "                    detail_address \n" +
                "                    order_total,\n" +
                "                    commune_address,\n" +
                "                    district_address,\n" +
                "                    province_address, \n" +
                "                    created_at,\n" +
                "                    updated_at)\n" +
                "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

        return abstractDAO.save(sql.toString(),
                addressOrder.getUserId(),
                new Timestamp(System.currentTimeMillis()),
                addressOrder.getPhone(),
                addressOrder.getFullName(),
                addressOrder.getPaymentMethodId(),
                addressOrder.getShippingMethodId(),
                addressOrder.getDetailAddress(),
                addressOrder.getTotal(),
                addressOrder.getCommuneAddress(),
                addressOrder.getDistrictAddress(),
                addressOrder.getProvinceAddress(),
                new Timestamp(System.currentTimeMillis()),
                new Timestamp(System.currentTimeMillis())
        );
    }

    @Override
    public List<ProductItemInfoForCartDTO> getCartInfoByUserId(List<Long> shoppingCartItemId) {
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
        sql.append("    from shopping_cart_item sci\n");
        sql.append("join product_item pi on sci.product_item_id = pi.id\n");
        sql.append("join products p on pi.product_id = p.id\n");
        sql.append("join sellers s on p.seller_id = s.id\n");
        sql.append( "where sci.id in (");
        for(int i = 0; i < shoppingCartItemId.size(); i++) {
            sql.append("?");
            if (i < shoppingCartItemId.size() - 1) {
                sql.append(", ");
            }
        }
        sql.append(")\n");
        sql.append( "order by s.id;");

        return abstractDAO.query(sql.toString(), resultSet -> {
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
        }, shoppingCartItemId.toArray());
    }
}
