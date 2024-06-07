
package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.Util.JDBCUtil;
import com.example.pbl3_1.controller.dto.cart.ProductItemInfoForCartDTO;
import com.example.pbl3_1.controller.dto.checkout.ProductForCheckOut;
import com.example.pbl3_1.dao.OrderDAO;
import com.example.pbl3_1.entity.Order;
import com.example.pbl3_1.entity.OrderDetail;
import com.example.pbl3_1.entity.Product;

import java.sql.*;
import java.util.List;
import java.util.Map;

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
        sql.append("    p.product_status_id as product_status_id,\n");
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
                        .productIsDeleted(resultSet.getShort("product_status_id") != 1)
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

    @Override
    public Integer getQuantityInStock(Long productItemId) {
        String sql = "select qty_in_stock from product_item where id = ? ";

        return abstractDAO.query(sql, resultSet -> resultSet.getInt("qty_in_stock"), productItemId).get(0);
    }

    @Override
    public void createOrder(Order order, List<OrderDetail> orderDetails) throws SQLException {
        StringBuilder sql = new StringBuilder("INSERT INTO orders (id, user_id, seller_id,");
                sql.append("fullname, phone,");
                sql.append("detail_address, commune_address, ");
                sql.append("district_address, province_address,");
                sql.append("payment_method_id, shipping_method_id,");
                sql.append("order_status_id, order_total, created_at, updated_at)");
        sql.append("VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

        StringBuilder sql2 = new StringBuilder("INSERT INTO order_detail \n");
        sql2.append("(order_id, \n");
        sql2.append("product_item_id, \n");
        sql2.append("quantity, \n");
        sql2.append("price)\n");
        sql2.append("VALUES (?, ?, ?, ?)");


        saveAllOrder(sql.toString(), sql2.toString(), order, orderDetails);
    }

    @Override
    public void createOrders(List<Order> orders, List<List<OrderDetail>> lists) throws SQLException {
        StringBuilder sql = new StringBuilder("INSERT INTO orders (id, user_id, seller_id,");
        sql.append("fullname, phone,");
        sql.append("detail_address, commune_address, ");
        sql.append("district_address, province_address,");
        sql.append("payment_method_id, shipping_method_id,");
        sql.append("order_status_id, order_total, created_at, updated_at)");
        sql.append("VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

        StringBuilder sql2 = new StringBuilder("INSERT INTO order_detail \n");
        sql2.append("(order_id, \n");
        sql2.append("product_item_id, \n");
        sql2.append("quantity, \n");
        sql2.append("price)\n");
        sql2.append("VALUES (?, ?, ?, ?)");

        saveAllOrders(sql.toString(), sql2.toString(), orders, lists);
    }


    private void saveAllOrders(String sql, String sql2, List<Order> orders, List<List<OrderDetail>> lists) throws SQLException {
        Connection con = JDBCUtil.getInstance().getConnection();
        try {
            con.setAutoCommit(false);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        for(int i = 0; i < orders.size(); i++) {
            Order order = orders.get(i);
            try(PreparedStatement orderStatement = con.prepareStatement(sql)){
                orderStatement.setString(1, order.getId());
                orderStatement.setLong(2, order.getUserId());
                orderStatement.setLong(3, order.getSellerId());
                orderStatement.setString(4, order.getFullName());
                orderStatement.setString(5, order.getPhone());
                orderStatement.setString(6, order.getDetailAddress());
                orderStatement.setString(7, order.getCommuneAddress());
                orderStatement.setString(8, order.getDistrictAddress());
                orderStatement.setString(9, order.getProvinceAddress());
                orderStatement.setShort(10, order.getPaymentMethodId());
                orderStatement.setLong(11, order.getShippingMethodId());
                orderStatement.setLong(12, order.getOrderStatusId());
                orderStatement.setLong(13, order.getTotal());
                orderStatement.setTimestamp(14, new Timestamp(System.currentTimeMillis()));
                orderStatement.setTimestamp(15, new Timestamp(System.currentTimeMillis()));

                orderStatement.executeUpdate();

                try(PreparedStatement orderDetailStatement = con.prepareStatement(sql2)) {
                    for(OrderDetail orderDetail : lists.get(i)) {
                        orderDetailStatement.setString(1, order.getId());
                        orderDetailStatement.setLong(2, orderDetail.getProductItemId());
                        orderDetailStatement.setInt(3, orderDetail.getQuantity());
                        orderDetailStatement.setInt(4, orderDetail.getUnitPrice());

                        orderDetailStatement.addBatch();
                    }
                    orderDetailStatement.executeBatch();
                }catch (SQLException ex){
                    con.rollback();
                    throw new SQLException("Đặt hàng chưa thành công!");
                }
            }catch (SQLException e){
                con.rollback();
                throw new SQLException("Đặt hàng chưa thành công!");
            }
        }
        con.commit();
    }

    private void saveAllOrder(String sql, String sql2, Order order, List<OrderDetail> orderDetails) throws SQLException{
        Connection con = JDBCUtil.getInstance().getConnection();
        try {
            con.setAutoCommit(false);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try(PreparedStatement orderStatement = con.prepareStatement(sql)){
            orderStatement.setString(1, order.getId());
            orderStatement.setLong(2, order.getUserId());
            orderStatement.setLong(3, order.getSellerId());
            orderStatement.setString(4, order.getFullName());
            orderStatement.setString(5, order.getPhone());
            orderStatement.setString(6, order.getDetailAddress());
            orderStatement.setString(7, order.getCommuneAddress());
            orderStatement.setString(8, order.getDistrictAddress());
            orderStatement.setString(9, order.getProvinceAddress());
            orderStatement.setShort(10, order.getPaymentMethodId());
            orderStatement.setLong(11, order.getShippingMethodId());
            orderStatement.setLong(12, order.getOrderStatusId());
            orderStatement.setLong(13, order.getTotal());
            orderStatement.setTimestamp(14, new Timestamp(System.currentTimeMillis()));
            orderStatement.setTimestamp(15, new Timestamp(System.currentTimeMillis()));

            orderStatement.executeUpdate();

            try(PreparedStatement orderDetailStatement = con.prepareStatement(sql2)) {
                for(OrderDetail orderDetail : orderDetails) {
                    orderDetailStatement.setString(1, order.getId());
                    orderDetailStatement.setLong(2, orderDetail.getProductItemId());
                    orderDetailStatement.setInt(3, orderDetail.getQuantity());
                    orderDetailStatement.setInt(4, orderDetail.getUnitPrice());

                    orderDetailStatement.addBatch();
                }
                orderDetailStatement.executeBatch();
            }catch (SQLException ex){
                con.rollback();
                throw new SQLException("Đặt hàng chưa thành công!");
            }
            con.commit();
        }catch (SQLException e){
            throw new SQLException("Đặt hàng chưa thành công!");
        }
    }
}
