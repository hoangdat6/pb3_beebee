package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.product.ProductDetailDTO;
import com.example.pbl3_1.entity.*;
import com.example.pbl3_1.service.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.*;

@WebServlet(name = "product", urlPatterns = {"/product", "/product/save"})
public class ProductController extends HttpServlet {
    public final ProductService productService = new ProductServiceImpl();
    public final CategoryService categoryService = new CategoryServiceImpl();
    public final VariationService variationService = new VariationServiceImpl();
    public final VariationOptionService variationOptionService = new VariationOptionServiceImpl();
    public final ProductItemService productItemService = new ProductItemServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
//        response.setContentType("text/html; charset=UTF-8");
        String path = request.getServletPath();

        System.out.println(path);
        switch (path) {
            case "/product":
                showProductDetails(request, response);
                break;
            case "/product/save":
                showCategoryForAddProduct(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String path = request.getServletPath();

        switch (path) {
            case "/product/save":
                saveProduct(request, response);
                break;
        }
    }



    public void showProductDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get user from session
        User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
        // check if the user is logged in or not
        Long id = Long.parseLong(request.getParameter("id"));
        if(user == null){
            // if not, redirect to the login page
            SessionUtil.getInstance().putValue(request, "redirect", "/product?id=" + id);
            response.sendRedirect(request.getContextPath() + "/login?action=login&message=login_required&alert=danger");
            return;
        }
        ProductDetailDTO productDetailDTO = productService.getProductDetail(id);
        request.setAttribute("productDetail", productDetailDTO);

        request.getRequestDispatcher("Product_Details.jsp").forward(request, response);
    }

    public void showCategoryForAddProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories = categoryService.getCategories();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
    }

    public void saveProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        // Tạo đối tượng ObjectMapper để chuyển đổi giữa đối tượng Java và JSON
        ObjectMapper objectMapper = new ObjectMapper();
        BufferedReader reader = request.getReader();
        String images = "";

        String root = getServletContext().getRealPath("/");

        root = root.replace("target" + File.separator +"PBL3_1-1.0-SNAPSHOT" + File.separator,
                "src" + File.separator + "main" + File.separator + "webapp" + File.separator );

        String rootPath = root + "ImageProduct"  + File.separator;


        System.out.println(rootPath);
        List<Map<String, Object>> data = objectMapper.readValue(reader, List.class);
        // Chuyển đổi JSON thành list


        // Tạo đối tượng Product
        Product product = new Product();
        product.setName(data.get(0).get("ProductName").toString());
        product.setDescription(data.get(0).get("ProductDescription").toString());
        product.setDiscount(Float.parseFloat(Objects.toString(data.get(0).get("Discount"))));
        product.setCategoryId(Integer.parseInt(data.get(0).get("ProductCategory").toString()));
//        product.setSellerId(Long.parseLong(data.get(0).get("SellerId"))); // seller xử lý sau

        // Thêm sản phẩm vào database
        Long productId = productService.addProduct(product);

        List<String> imageStrings = (List<String>) data.get(0).get("Images") ;

        images = saveImages(rootPath, productId.toString(),"", imageStrings);

        // Cập nhật đường dẫn ảnh vào database
        productService.updateProductImage(productId, images);

        // Thêm các biến thể và các biến thể của biến thể vào database
        Long variation1 = variationService.addVariation(Variation.builder().name(data.get(0).get("Variation1").toString()).productId(productId).build());
        Long variation2 = variationService.addVariation(Variation.builder().name(data.get(0).get("Variation2").toString()).productId(productId).build());

        // Tạo danh sách các sản phẩm con
        List<ProductItem> items = new LinkedList<>();
        Long variationOption1 = null;
        Long variationOption2 = null;

        for(int i = 1; i < data.size(); i++){
            ProductItem item = new ProductItem();
            item.setProductId(productId);
            if(data.get(i).getOrDefault("ProductItemImage", null) != null){
                List<String> itemImages = (List<String>) data.get(i).get("ProductItemImage");
                String imgPath = saveImages(rootPath, productId.toString(), "i", itemImages);
                item.setProductImgPath(imgPath);
                System.out.println(imgPath);
            }

            if(variation1 != null){
                // nếu variation1 không rỗng thì thêm vào database
                variationOption1 = variationOptionService.addVariationOptionOrGet(VariationOption.builder().
                        value(data.get(i).get("VariationOption2").toString()).
                        variationId(variation1).
                        build()
                );
            }
            if(variation2 != null){
                // nếu variation2 không rỗng thì thêm vào database
                variationOption2 = variationOptionService.addVariationOptionOrGet(VariationOption.builder().
                        value(data.get(i).get("VariationOption1").toString()).
                        variationId(variation2).build());
            }

            item.setVariation1(variationOption1);
            item.setVariation2(variationOption2);
            item.setQtyInStock(Integer.parseInt(data.get(i).get("QtyInStock").toString()));
            item.setPrice(Float.parseFloat(data.get(i).get("Price").toString()));
            items.add(item);
        }

        // thêm tất cả các sản phẩm con vào database
        Object id = productItemService.addProductItems(items);
        String json;
        if(id != null){
            json = "{\"status\" : \"200\"}";
        }else {
            json = "{\"status\" : \"500\"}";
        }
        objectMapper.writeValue(response.getOutputStream(), json);
    }

    String saveImages(String rootPath, String productId, String item, List<String> imageStrings) throws IOException {
        String images = "";
        String dir = "";
        String filename = "";
        for (int i = 0; i < imageStrings.size(); i++) {
            // Decode base64 string to byte array
            byte[] data1 = Base64.getDecoder().decode(imageStrings.get(i));

            dir = productId + File.separator;
            Path path = Paths.get(rootPath + File.separator + dir);
            if(!Files.exists(path)){
                Files.createDirectories(path);
            }

            filename = productId + "_" +  i  + item + ".jpg";
            // Define path to save image
            Path pathImg = Paths.get(path + File.separator + filename);

            // Write byte array to file
            Files.write(pathImg, data1);

            images += "ImageProduct/" + dir + filename + ",";
        }
        return images;
    }
}
