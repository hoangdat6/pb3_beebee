<<<<<<< HEAD
<<<<<<< HEAD
package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.product.ProductForCheckOut;
import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.Product;

import java.sql.Timestamp;
import java.util.List;

public class OrderDAOImpl implements OrderDAO {
    private AbstractDAOImpl<Product> abstractDAO = new AbstractDAOImpl<>();
    @Override
    public List<ProductForCheckOut> getProductByOrderList(List<Long> shoppingCartItemId) {
        StringBuilder sql = new StringBuilder("select sci.id as shopping_cart_item_id,\n" +
                "       pi.id as product_item_id,\n" +
                "       p.id as product_id,\n" +
                "       p.name as product_name,\n" +
                "       p.discount as discount,\n" +
                "       p.seller_id as seller_id,\n" +
                "       p.is_deleted as is_deleted,\n" +
                "       pi.img_path,\n" +
                "       pi.price as price,\n" +
                "       pi.qty_in_stock as qty_in_stock,\n" +
                "       sci.quantity as quantity,\n" +
                "       pi.price * (1 - p.discount / 100) * sci.quantity as total_price\n" +
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
                        shoppingCartItemId(resultSet.getLong("shopping_cart_item_id")).
                        productItemId(resultSet.getLong("product_item_id")).
                        productId(resultSet.getLong("product_id")).
                        name(resultSet.getString("product_name")).
                        discount(resultSet.getInt("discount")).
                        sellerId(resultSet.getString("seller_id")).
                        isDeleted(resultSet.getBoolean("is_deleted")).
                        imgPath(resultSet.getString("img_path")).
                        price(resultSet.getFloat("price")).
                        qtyInStock(resultSet.getInt("qty_in_stock")).
                        quantity(resultSet.getInt("quantity")).
                        totalPrice(resultSet.getFloat("total_price")).build();
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
=======
package com.example.pbl3_1.dao.impl;public class OrderDAO {
>>>>>>> b58afbb (Change UserController)
=======
package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.entity.Order;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDAOImpl implements OrderDAO {
    public List<Order> getAllOrderList() {
        List<Order> orderList = new ArrayList<Order>();
        String query = "SELECT * FROM orders";
        return orderList;
    }

    private ResultSet getOrderResultSet(int UserID) throws SQLException {
        String query = "SELECT * FROM orders WHERE user_id = " + UserID;
        GenericDAO<Order> abstractDAO = new AbstractDAOImpl<>();
        return (ResultSet) abstractDAO.query(query, resultSet -> {
            return resultSet;
        });
    }

    public List<Order> getOrderListByID(int UserId){
        List<Order> orderList = new ArrayList<Order>();
        String query = "SELECT * FROM orders WHERE user_id = " + UserId;
        return orderList;
    }
>>>>>>> 525f710 (Change UserController)
}
