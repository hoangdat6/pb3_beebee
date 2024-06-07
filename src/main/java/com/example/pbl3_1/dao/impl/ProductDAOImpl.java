package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.controller.dto.product.*;
import com.example.pbl3_1.controller.dto.seller.SellerDTO;
import com.example.pbl3_1.dao.ProductDAO;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;
import com.example.pbl3_1.mapper.ProductMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImpl implements ProductDAO {
    private AbstractDAOImpl<Product> abstractDAO = new AbstractDAOImpl<>();

    @Override
    public Long save(Product product) {
        String sql = "insert into products (name, description, img_path, category_id, seller_id, created_at, discount) values (?, ?, ?, ?, ?, ?)";
        return abstractDAO.save(
                sql,
                product.getName(),
                product.getDescription(),
                product.getImgPath(),
                product.getCategoryId(),
                product.getSellerId(),
                new Timestamp(System.currentTimeMillis()),
                product.getDiscount()
        );
    }

    @Override
    public Integer update(Product product) {
        return null;
    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public Product getProductById(Long id) {
        String sql = "select * from products where id = ?";
        List<Product> products = abstractDAO.query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public List<Product> getProducts() {
        String sql = "select * from products";
        return abstractDAO.query(sql, new ProductMapper());
    }

    @Override
    public List<ProductPreviewDTO> getProductForHomeDtos() {
        StringBuilder sql = new StringBuilder("SELECT p.id, p.name, p.discount, p.img_path ,p.seller_id, s.shop_name, s.avatar, MIN(pi.price) as min_price\n");
        sql.append("FROM products AS p\n");
        sql.append("JOIN product_item pi ON p.id = pi.product_id\n");
        sql.append("JOIN sellers AS s ON p.seller_id = s.id\n");
        sql.append("JOIN product_status AS ps ON p.product_status_id = ps.id\n");
        sql.append("WHERE ps.id = 1\n");
        sql.append("GROUP BY p.id\n");
        sql.append("LIMIT 20 OFFSET 0");


        return abstractDAO.query(sql.toString(), resultSet -> {
            try {
                return new ProductPreviewDTO(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getInt("min_price"),
                        resultSet.getInt("discount"),
                        resultSet.getString("img_path").split(",")[0],
                        resultSet.getLong("seller_id"),
                        resultSet.getString("shop_name"),
                        resultSet.getString("avatar").split(",")[0]
                );
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        });
    }

    @Override
    public ProductDetailDTO getProductDetailById(Long id) {
//        StringBuilder sql = new StringBuilder("SELECT p.id, p.name, p.discount, p.img_path , MIN(pi.price) as min_price, MAX(pi.price) as max_price, p.description,\n");
//        sql.append("p.seller_id, s.shop_name, s.avatar,\n");
//        sql.append("p.category_id ,c.name as category_name,\n");
//        sql.append("SUM(qty_in_stock) as total_qty\n");
//        sql.append("FROM products AS p\n");
//        sql.append("LEFT JOIN product_item pi ON p.id = pi.product_id\n");
//        sql.append("LEFT JOIN sellers AS s ON p.seller_id = s.id\n");
//        sql.append("LEFT JOIN categories as c ON p.category_id = c.id\n");
//        sql.append("WHERE p.id = ?");

        StringBuilder sql = new StringBuilder("SELECT p.id, p.name, p.discount, p.img_path, pi.min_price, pi.max_price, p.description,\n");
        sql.append("       p.seller_id, s.shop_name, s.avatar, p.category_id, c.name as category_name, pi.total_qty\n");
        sql.append("FROM products AS p\n");
        sql.append("         JOIN (\n");
        sql.append("    SELECT product_id,\n");
        sql.append("           MIN(price) as min_price,\n");
        sql.append("           MAX(price) as max_price,\n");
        sql.append("           SUM(qty_in_stock) as total_qty\n");
        sql.append("    FROM product_item\n");
        sql.append("    GROUP BY product_id\n");
        sql.append(") AS pi ON p.id = pi.product_id\n");
        sql.append("         JOIN sellers AS s ON p.seller_id = s.id\n");
        sql.append("         JOIN categories as c ON p.category_id = c.id\n");
        sql.append("WHERE p.id = ?;");

        List<ProductDetailDTO> list = abstractDAO.query(sql.toString(), resultSet -> {
            try {
                return new ProductDetailDTO(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getInt("max_price"),
                        resultSet.getInt("min_price"),
                        resultSet.getInt("discount"),
                        new ArrayList<>(List.of(resultSet.getString("img_path"))),
                        resultSet.getString("description"),
                        resultSet.getInt("category_id"),
                        resultSet.getString("category_name"),
                        resultSet.getLong("seller_id"),
                        resultSet.getString("shop_name"),
                        resultSet.getString("avatar").split(",")[0],
                        resultSet.getInt("total_qty"),
                        false,
                        null,
                        true
                );
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }, id);

        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public void increaseView(Long id) {
        String sql = "UPDATE products SET views = views + 1 WHERE id = ?";
        abstractDAO.update(sql, id);
    }

    @Override
    public Long addProduct(Product product) {
        String sql = "INSERT INTO products (name, description, img_path, category_id, seller_id, created_at, discount, views, product_status_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return abstractDAO.save(
                sql,
                product.getName(),
                product.getDescription(),
                product.getImgPath(),
                product.getCategoryId(),
                product.getSellerId(),
                new Timestamp(System.currentTimeMillis()),
                product.getDiscount(),
                0,
                1
        );
    }

    @Override
    public List<String> getSuggestName(String textSearch) {
        System.out.println(textSearch);
//        String sql = "SELECT TOP 5 name FROM products WHERE name LIKE ? ORDER BY LEN(name) ASC";  // MySQL
        String sql = "SELECT name FROM products WHERE name LIKE ? ORDER BY LENGTH(name) ASC LIMIT 5"; //MariaDB
        //String sql = "SELECT name FROM products WHERE name LIKE N? COLLATE utf8_unicode_ci";
        return abstractDAO.query(sql, resultSet -> {
            try {
                return new String(
                        resultSet.getString("name")
                );
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }, "%" + textSearch + "%");
    }

    @Override
    public void updateProductImage(Long productId, String images) {
        String sql = "UPDATE products SET img_path = ? WHERE id = ?";
        abstractDAO.update(sql, images, productId);
    }

    @Override
    public List<ProductPreviewDTO> getProductsForSearch(String keyword, int minPrice, int maxPrice, String categories) {
        if (categories.isEmpty()) {
            StringBuilder sql = new StringBuilder("SELECT p.id, p.name, p.discount, p.img_path ,p.seller_id, s.shop_name, s.avatar, MIN(pi.price) as min_price\n");
            sql.append("FROM products AS p\n");
            sql.append("JOIN product_item pi ON p.id = pi.product_id\n");
            sql.append("JOIN sellers AS s ON p.seller_id = s.id\n");
            sql.append("JOIN categories AS c ON p.category_id = c.id\n");
            sql.append("WHERE (p.name LIKE ? OR s.shop_name LIKE ? OR c.name LIKE ?)\n");
            sql.append("GROUP BY p.id\n");
            sql.append("HAVING MIN(pi.price) * (1 -  p.discount / 100) >= ? AND MIN(pi.price) * (1 -  p.discount / 100) <= ?\n");
            //        sql.append("LIMIT 20 OFFSET 0");

            return abstractDAO.query(sql.toString(), resultSet -> {
                try {
                    return new ProductPreviewDTO(
                            resultSet.getLong("id"),
                            resultSet.getString("name"),
                            resultSet.getInt("min_price"),
                            resultSet.getInt("discount"),
                            resultSet.getString("img_path").split(",")[0],
                            resultSet.getLong("seller_id"),
                            resultSet.getString("shop_name"),
                            resultSet.getString("avatar").split(",")[0]
                    );
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }, "%" + keyword + "%", "%" + keyword + "%", "%" + keyword + "%", minPrice, maxPrice);
        } else {
            StringBuilder sql = new StringBuilder("SELECT p.id, p.name, p.discount, p.img_path ,p.seller_id, s.shop_name, s.avatar, MIN(pi.price) as min_price\n");
            sql.append("FROM products AS p\n");
            sql.append("JOIN product_item pi ON p.id = pi.product_id\n");
            sql.append("JOIN sellers AS s ON p.seller_id = s.id\n");
            sql.append("JOIN categories AS c ON p.category_id = c.id\n");
            sql.append("WHERE (p.name LIKE ? OR s.shop_name LIKE ? OR c.name LIKE ?)\n");
            sql.append("AND ( p.category_id = " + categories.charAt(0) + "\n");
            String[] Categories = categories.split("-");
            for (int i = 1; i < Categories.length; i++) {
                sql.append("OR p.category_id = " + Categories[i] + "\n");
            }
            sql.append(") ");

            sql.append("GROUP BY p.id\n");
            sql.append("HAVING MIN(pi.price) * (1 -  p.discount / 100) >= ? AND MIN(pi.price) * (1 -  p.discount / 100) <= ?\n");
            //        sql.append("LIMIT 20 OFFSET 0");

            return abstractDAO.query(sql.toString(), resultSet -> {
                try {
                    return new ProductPreviewDTO(
                            resultSet.getLong("id"),
                            resultSet.getString("name"),
                            resultSet.getInt("min_price"),
                            resultSet.getInt("discount"),
                            resultSet.getString("img_path").split(",")[0],
                            resultSet.getLong("seller_id"),
                            resultSet.getString("shop_name"),
                            resultSet.getString("avatar").split(",")[0]
                    );
                } catch (SQLException e) {
                    System.out.println(sql);
                    e.printStackTrace();
                    return null;
                }
            }, "%" + keyword + "%", "%" + keyword + "%", "%" + keyword + "%", minPrice, maxPrice);
        }
    }

    @Override
    public List<SellerDTO> getSellersForSearch(String keyword, int minPrice, int maxPrice, String categories) {
        if (categories.isEmpty()) {
            StringBuilder sql = new StringBuilder("SELECT s.id, s.avatar, s.shop_name, s.views, COUNT(*) as count\n");
            sql.append("FROM products AS p\n");
            sql.append("JOIN product_item pi ON p.id = pi.product_id\n");
            sql.append("JOIN sellers AS s ON p.seller_id = s.id\n");
            sql.append("JOIN categories AS c ON p.category_id = c.id\n");
            sql.append("WHERE (p.name LIKE ? OR s.shop_name LIKE ? OR c.name LIKE ?)\n");
            sql.append("GROUP BY s.id, s.avatar, s.shop_name, s.views, p.discount\n");
            sql.append("HAVING MIN(pi.price) * (1 -  p.discount / 100) >= ? AND MIN(pi.price) * (1 -  p.discount / 100) <= ?\n");
            sql.append("ORDER BY count \n");
            sql.append("LIMIT 1\n");
            return abstractDAO.query(sql.toString(), resultSet -> {
                try {
                    return new SellerDTO(
                            resultSet.getLong("id"),
                            resultSet.getString("avatar").split(",")[0],
                            resultSet.getString("shop_name"),
                            resultSet.getInt("views")
                    );
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }, "%" + keyword + "%", "%" + keyword + "%", "%" + keyword + "%", minPrice, maxPrice);
        } else {
            StringBuilder sql = new StringBuilder("SELECT s.id, s.avatar, s.shop_name, s.views, COUNT(*) as count\n");
            sql.append("FROM products AS p\n");
            sql.append("JOIN product_item pi ON p.id = pi.product_id\n");
            sql.append("JOIN sellers AS s ON p.seller_id = s.id\n");
            sql.append("JOIN categories AS c ON p.category_id = c.id\n");
            sql.append("WHERE (p.name LIKE ? OR s.shop_name LIKE ? OR c.name LIKE ?)\n");
            sql.append("AND ( p.category_id = " + categories.charAt(0) + "\n");
            String[] Categories = categories.split("-");
            for (int i = 1; i < Categories.length; i++) {
                sql.append("OR p.category_id = " + Categories[i] + "\n");
            }
            sql.append(") ");
            sql.append("GROUP BY s.id, s.avatar, s.shop_name, s.views, p.discount\n");
            sql.append("HAVING MIN(pi.price) * (1 -  p.discount / 100) >= ? AND MIN(pi.price) * (1 -  p.discount / 100) <= ?\n");
            sql.append("ORDER BY count\n");
            sql.append("LIMIT 1\n");
            return abstractDAO.query(sql.toString(), resultSet -> {
                try {
                    return new SellerDTO(
                            resultSet.getLong("id"),
                            resultSet.getString("avatar").split(",")[0],
                            resultSet.getString("shop_name"),
                            resultSet.getInt("views")
                    );
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }, "%" + keyword + "%", "%" + keyword + "%", "%" + keyword + "%", minPrice, maxPrice);
        }
    }

    @Override
    public List<Category> getAllCategories() {
        String sql = "SELECT * FROM categories";
        return abstractDAO.query(sql, resultSet -> {
            try {
                return new Category(
                        resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getString("img_path")
                );
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        });
    }

    @Override
    public List<ProductManagementDTO> getProductManagement(Long sellerId, int idCategory, String searchValue, int page, int size) {
        StringBuilder sql = new StringBuilder("SELECT p.id, p.name, p.sales, pi.price, ps.name as status_name, SUM(qty_in_stock) as total_qty\n");
        sql.append("FROM products AS p\n");
        sql.append("JOIN product_item pi ON p.id = pi.product_id\n");
        sql.append("JOIN product_status ps ON p.product_status_id = ps.id\n");
        sql.append("WHERE p.seller_id = ?\n");
        sql.append("AND p.product_status_id <> 2\n");
        if (idCategory != 0) {
            sql.append("AND p.category_id = ?\n");
        }
        sql.append("AND p.name LIKE ?\n");
        sql.append("GROUP BY p.id, p.name, p.sales, pi.price, ps.name\n");
        sql.append("LIMIT ? OFFSET ?");
        if (idCategory != 0) {
            return abstractDAO.query(sql.toString(), resultSet -> {
                try {
                    return new ProductManagementDTO(
                            resultSet.getLong("id"),
                            resultSet.getString("name"),
                            resultSet.getInt("price"),
                            resultSet.getInt("total_qty"),
                            resultSet.getLong("sales"),
                            resultSet.getString("status_name")
                    );
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }, sellerId, idCategory, "%" + searchValue + "%", size, (page - 1) * size);
        }
        return abstractDAO.query(sql.toString(), resultSet -> {
            try {
                return new ProductManagementDTO(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getInt("price"),
                        resultSet.getInt("total_qty"),
                        resultSet.getLong("sales"),
                        resultSet.getString("status_name")
                );
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }, sellerId, "%" + searchValue + "%", size, (page - 1) * size);
    }

    @Override
    public List<Category> getCategoriesbyIdShop(Long idShop) {
        String sql = "SELECT * FROM categories WHERE id IN (SELECT DISTINCT category_id FROM products WHERE seller_id = ? AND product_status_id <> 2)";
        return abstractDAO.query(sql, resultSet -> {
            try {
                return new Category(
                        resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getString("img_path")
                );
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }, idShop);
    }

    @Override
    public void deleteProduct(Long idProduct) {
        String sql = "UPDATE products SET product_status_id = 2 WHERE id = ?";
        abstractDAO.update(sql, idProduct);
    }

    @Override
    public int getProductManagementTotalPage(Long sellerId, int idCategory, String searchValue) {
        StringBuilder sql = new StringBuilder("SELECT COUNT(p.id) as total\n");
        sql.append("FROM products AS p\n");
        sql.append("JOIN product_status ps ON p.product_status_id = ps.id\n");
        sql.append("WHERE p.seller_id = ?\n");
        sql.append("AND p.product_status_id <> 2\n");
        if (idCategory != 0) {
            sql.append("AND p.category_id = ?\n");
        }
        sql.append("AND p.name LIKE ?\n");
        if (idCategory != 0) {
            return abstractDAO.query(sql.toString(), resultSet -> {
                try {
                    return resultSet.getInt("total");
                } catch (SQLException e) {
                    e.printStackTrace();
                    return 0;
                }
            }, sellerId, idCategory, "%" + searchValue + "%").isEmpty() ? 0 : abstractDAO.query(sql.toString(), resultSet -> {
                try {
                    return resultSet.getInt("total");
                } catch (SQLException e) {
                    e.printStackTrace();
                    return 0;
                }
            }, sellerId, idCategory, "%" + searchValue + "%").get(0);
        }
        return abstractDAO.query(sql.toString(), resultSet -> {
            try {
                return resultSet.getInt("total");
            } catch (SQLException e) {
                e.printStackTrace();
                return 0;
            }
        }, sellerId, "%" + searchValue + "%").isEmpty() ? 0 : abstractDAO.query(sql.toString(), resultSet -> {
            try {
                return resultSet.getInt("total");
            } catch (SQLException e) {
                e.printStackTrace();
                return 0;
            }
        }, sellerId, "%" + searchValue + "%").get(0);
    }
    @Override
    public List<UserOrderProductDTO> getUserOrderProduct(Long idUser, int status){
        StringBuilder sql = new StringBuilder("SELECT o.id, o.seller_id, s.shop_name, s.avatar, os.status, sm.fee\n");
        sql.append("FROM orders AS o\n");
        sql.append("JOIN sellers s ON o.seller_id = s.id\n");
        sql.append("JOIN order_status os ON o.order_status_id = os.id\n");
        sql.append("JOIN shipping_method sm ON o.shipping_method_id = sm.id\n");
        sql.append("WHERE o.user_id = ?\n");
        if(status != 0){
            sql.append("AND o.order_status_id = ?\n");
        }
        sql.append("GROUP BY o.id, o.seller_id, s.shop_name, s.avatar\n");
        sql.append("ORDER BY o.created_at DESC");
        List<UserOrderProductDTO> list;
        if (status == 0)
        {
             list = abstractDAO.query(sql.toString(), resultSet -> {
                try {
                    return UserOrderProductDTO.builder()
                            .id(resultSet.getString("id"))
                            .sellerId(resultSet.getLong("seller_id"))
                            .name(resultSet.getString("shop_name"))
                            .avatar(resultSet.getString("avatar").split(",")[0])
                            .status(resultSet.getString("status"))
                            .shippingFee(resultSet.getInt("fee"))
                            .build();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }, idUser);
        }else
        {
            list = abstractDAO.query(sql.toString(), resultSet -> {
                try {
                    return UserOrderProductDTO.builder()
                            .id(resultSet.getString("id"))
                            .sellerId(resultSet.getLong("seller_id"))
                            .name(resultSet.getString("shop_name"))
                            .avatar(resultSet.getString("avatar").split(",")[0])
                            .status(resultSet.getString("status"))
                            .build();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }, idUser, status);
        }

//        for(UserOrderProductDTO userOrderProductDTO : list){
//            System.out.println(userOrderProductDTO.getId() + " " + userOrderProductDTO.getName() + " " + userOrderProductDTO.getSellerId() + " " + userOrderProductDTO.getAvatar());
//        }
        StringBuilder sql2 = new StringBuilder("SELECT odi.voucher_discount, dt.name\n");
        sql2.append("FROM order_discount AS odi\n");
        sql2.append("JOIN discount_type AS dt ON odi.discount_type_id = dt.id\n");
        sql2.append("WHERE odi.order_id = ?\n");
        StringBuilder sql3 = new StringBuilder("SELECT p.id, p.name, p.discount, pi.price, pi.img_path, pi.variation1, pi.variation2, od.quantity\n");
        sql3.append("FROM products AS p\n");
        sql3.append("JOIN product_item pi ON p.id = pi.product_id\n");
        sql3.append("JOIN order_detail od ON pi.id = od.product_item_id\n");
        sql3.append("WHERE od.order_id = ?\n");
        StringBuilder sql4 = new StringBuilder("SELECT v.name\n");
        sql4.append("FROM variation AS v\n");
        sql4.append("JOIN variation_option vo ON v.id = vo.variation_id\n");
        sql4.append("WHERE vo.id = ?\n");
        for (UserOrderProductDTO userOrderProductDTO : list) {
            System.out.println("Thong tin shop: " + userOrderProductDTO.getId() + "  " + userOrderProductDTO.getName());
            List<OrderDiscountDTO> orderDiscountDTOS = abstractDAO.query(sql2.toString(), resultSet -> {
                try {
                    return OrderDiscountDTO.builder()
                            .voucherDiscount(resultSet.getInt("voucher_discount"))
                            .nameVoucher(resultSet.getString("name"))
                            .build();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }, userOrderProductDTO.getId());
//            for (OrderDiscountDTO orderDiscountDTO : orderDiscountDTOS) {
//                System.out.println(orderDiscountDTO.getNameVoucher() + " " + orderDiscountDTO.getVoucherDiscount());
//            }
            userOrderProductDTO.setOrderDiscounts(orderDiscountDTOS);
            List<ProductOrderDTO> products = abstractDAO.query(sql3.toString(), resultSet -> {
                try {
                    return ProductOrderDTO.builder()
                            .id(resultSet.getLong("id"))
                            .name(resultSet.getString("name"))
                            .price(resultSet.getInt("price"))
                            .discount(resultSet.getInt("discount"))
                            .imgPath(resultSet.getString("img_path"))
                            .variation1(resultSet.getLong("variation1"))
                            .variation2(resultSet.getLong("variation2"))
                            .quantity(resultSet.getInt("quantity"))
                            .build();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }, userOrderProductDTO.getId());
            System.out.println("Thong tin product: ");
            for (ProductOrderDTO productOrderDTO : products) {
                System.out.println(productOrderDTO);
            }
            for(ProductOrderDTO productOrderDTO : products){
                if(productOrderDTO.getVariation1() != 0){
                    productOrderDTO.setNameVariation1(abstractDAO.query(sql4.toString(), resultSet -> {
                        try {
                            return resultSet.getString("name");
                        } catch (SQLException e) {
                            e.printStackTrace();
                            return null;
                        }
                    }, productOrderDTO.getVariation1()).get(0));
                }
                if(productOrderDTO.getVariation2() != 0){
                    productOrderDTO.setNameVariation2(abstractDAO.query(sql4.toString(), resultSet -> {
                        try {
                            return resultSet.getString("name");
                        } catch (SQLException e) {
                            e.printStackTrace();
                            return null;
                        }
                    }, productOrderDTO.getVariation2()).get(0));
                }
            }

//            System.out.println("Thong tin variation: ");
//            for(ProductOrderDTO productOrderDTO1 : products){
//                if (productOrderDTO1.getVariation1() != 0)
//                    System.out.println(productOrderDTO1.getNameVariation1());
//                if (productOrderDTO1.getVariation2() != 0)
//                    System.out.println(productOrderDTO1.getNameVariation2());
//            }
            userOrderProductDTO.setProducts(products);
        }
        return list;
    }
}
