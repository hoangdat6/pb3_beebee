package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.user_login.CheckLoggedUser;
import com.example.pbl3_1.controller.user_login.CheckRegisteredSeller;
import com.example.pbl3_1.entity.*;
import com.example.pbl3_1.service.*;
import com.example.pbl3_1.service.impl.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

@WebServlet(name = "addProduct", urlPatterns = {"/seller/product/save"})
public class SaveProductController extends HttpServlet {
    public final ProductService productService = new ProductServiceImpl();
    public final CategoryService categoryService = new CategoryServiceImpl();
    public final VariationService variationService = new VariationServiceImpl();
    public final VariationOptionService variationOptionService = new VariationOptionServiceImpl();
    public final ProductItemService productItemService = new ProductItemServiceImpl();
    public final SellerService sellerService = new SellerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String path = request.getServletPath();

        switch (path) {
            case "/seller/product/save":
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
            case "/seller/product/save":
                saveProduct(request, response);
                break;
        }
    }

    public void showCategoryForAddProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(CheckLoggedUser.checkLoggedUser(request, response, "/seller/product/save")){
            if(CheckRegisteredSeller.checkRegisteredSeller(request, response, "/seller/product/save", ((User) SessionUtil.getInstance().getValue(request, "USERMODEL")).getId())){
                List<Category> categories = categoryService.getCategories();
                request.setAttribute("categories", categories);
                request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
            }
        }
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
        String webappDirectoryRoot = getServletContext().getRealPath("/") + File.separator + "ImageProduct" + File.separator;

        System.out.println(rootPath);
        List<Map<String, Object>> data = objectMapper.readValue(reader, List.class);
        // Chuyển đổi JSON thành list

        Long userId = ((User) SessionUtil.getInstance().getValue(request, "USERMODEL")).getId();

        // Tạo đối tượng Product
        Product product = new Product();
        product.setName(data.get(0).get("ProductName").toString());
        product.setDescription(data.get(0).get("ProductDescription").toString());
        product.setDiscount(Integer.parseInt(Objects.toString(data.get(0).get("Discount"))));
        product.setCategoryId(Integer.parseInt(data.get(0).get("ProductCategory").toString()));
        product.setSellerId(sellerService.getIdByUserId(userId)); // seller xử lý sau

        // Thêm sản phẩm vào database
        Long productId = productService.addProduct(product);

        List<String> imageStrings = (List<String>) data.get(0).get("Images") ;

        images = saveImages(rootPath, productId.toString(),"", imageStrings);
        saveImages(webappDirectoryRoot, productId.toString(),"", imageStrings);

        // Cập nhật đường dẫn ảnh vào database
        productService.updateProductImage(productId, images);

        // Thêm các biến thể và các biến thể của biến thể vào database
        Long variation1 = variationService.addVariation(Variation.builder().name(data.get(0).get("Variation1").toString()).productId(productId).build());
        Long variation2 = variationService.addVariation(Variation.builder().name(data.get(0).get("Variation2").toString()).productId(productId).build());

        // Tạo danh sách các sản phẩm con
        List<ProductItem> items = new LinkedList<>();
        Long variationOption1 = null;
        Long variationOption2 = null;

        int row = Integer.parseInt(data.get(data.size() - 1).get("rowSpan").toString());

        String imgPath = "";
        for(int i = 1; i < data.size() - 1; i++){
            ProductItem item = new ProductItem();
            item.setProductId(productId);
            if(i % row == 1){
                if(data.get(i).getOrDefault("ProductItemImage", null) != null){
                    String itemImages = data.get(i).get("ProductItemImage").toString();
                    imgPath = saveImages(rootPath, productId.toString(), Integer.toString(i), List.of(itemImages));
                    saveImages(webappDirectoryRoot, productId.toString(), Integer.toString(i), List.of(itemImages));
                    item.setImgPath(imgPath);
                }
            }else {
                item.setImgPath(imgPath);
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
            item.setPrice(Integer.parseInt(data.get(i).get("Price").toString()));
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
        StringBuilder images = new StringBuilder();
        String dir = "";
        String filename = "";
        for (int i = 0; i < imageStrings.size(); i++) {
            // Decode base64 string to byte array
            byte[] data1 = Base64.getDecoder().decode(imageStrings.get(i));

            dir = productId + "/";
            Path path = Paths.get(rootPath + "/" + dir);
            if(!Files.exists(path)){
                Files.createDirectories(path);
            }

            filename = productId + "_" +  i  + item + ".png";
            // Define path to save image
            Path pathImg = Paths.get(path + "/" + filename);

            // Write byte array to file
            Files.write(pathImg, data1);

            if(i == imageStrings.size() - 1)
                images.append("ImageProduct/").append(dir).append(filename);
            else
                images.append("ImageProduct/").append(dir).append(filename).append(",");
        }
        return images.toString();
    }
}
