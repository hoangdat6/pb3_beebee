
package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.cart.ProductForCheckOut;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.Product;

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
    public List<Order> getOrderListByID(int userID) {
        return null;
    }
}
