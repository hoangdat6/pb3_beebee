package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.IntAndListProductContainer;
import com.example.pbl3_1.controller.dto.product.ProductManagementDTO;
import com.example.pbl3_1.controller.dto.product.ProductUpdateDTO;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.ProductService;
import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.impl.ProductServiceImpl;
import com.example.pbl3_1.service.impl.SellerServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet (name = "ProductManagement", urlPatterns = {"/seller/product/productmanagement", "/seller/product/productmanagement/update", "/seller/product/productmanagement/updateproduct"})
public class ProductManagementController extends HttpServlet {
    public final ProductService productService = new ProductServiceImpl();
    public final SellerService sellerService = new SellerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String path = request.getServletPath();
        System.out.println(path);
        switch (path) {
            case "/seller/product/productmanagement":
                showProductManagement(request, response);
                break;
            case "/seller/product/productmanagement/update":
                showUpdateProduct(request, response);
                break;
            case "/seller/product/productmanagement/updateproduct":
                updateProduct(request, response);
                showProductManagement(request, response);
                break;

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request, response);
    }
    public void showProductManagement(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = (User) request.getSession().getAttribute("USERMODEL");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
        }else{
            int id = request.getParameter("idcategory") == null ? 0 : Integer.parseInt(request.getParameter("idcategory"));
            boolean check = request.getParameter("check") != null;
            String action = request.getParameter("action") != null ? request.getParameter("action") : "";
            if(action.equals("delete")){
                String[] idProduct = request.getParameter("idProducts").split("-");
                for(int i = 0; i < idProduct.length; i++) {
                    productService.deleteProduct(Long.parseLong(idProduct[i]));
                }
            }
            int status = request.getParameter("status") == null ? 0 : Integer.parseInt(request.getParameter("status"));
            System.out.println("status: " + status);
            int size = 2;
            int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
            String searchValue = request.getParameter("search") == null ? "" : request.getParameter("search");
            Long IDseller = sellerService.getIdByUserId(user.getId());
            List<ProductManagementDTO> productManagementDTOList = productService.getProductManagement(IDseller, id, searchValue, page, size, status);
            List<Category> categories = productService.getCategoriesbyIdShop(IDseller);
            int totalPage = productService.getProductManagementTotalPage(IDseller, id, searchValue, status);
            System.out.println("totalPage: " + totalPage);
            totalPage = totalPage % size == 0 ? totalPage / size : totalPage / size + 1;
            if(check){
                ObjectMapper objectMapper = new ObjectMapper();
                try {
                    System.out.println("totalPageAfter: " + totalPage);
                    IntAndListProductContainer IAL = new IntAndListProductContainer(productManagementDTOList, totalPage, page);
                    objectMapper.writeValue(response.getOutputStream(), IAL);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }else
            {
                System.out.println(categories);
                System.out.println(productManagementDTOList);
                request.setAttribute("totalPage", totalPage);
                request.setAttribute("productManagement", productManagementDTOList);
                request.setAttribute("shopCategories", categories);
                request.getRequestDispatcher("ProductManagement.jsp").forward(request, response);
            }

        }
    }
    public void showUpdateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = (User) request.getSession().getAttribute("USERMODEL");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
        }else{
            Long id = Long.parseLong(request.getParameter("id"));
            List<ProductUpdateDTO> data = productService.getProductUpdate(id);
            System.out.println("data = " + data);
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                objectMapper.writeValue(response.getOutputStream(), data);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    public void updateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = (User) request.getSession().getAttribute("USERMODEL");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
        }else{
            String data = request.getParameter("data");
            String[] dataArr = data.split(",");
            for(int i = 0; i < dataArr.length; i++){
                System.out.println("data: " + dataArr[i]);
                String[] dataArr2 = dataArr[i].split("-");
                Long id = Long.parseLong(dataArr2[0]);
                Integer quantity = Integer.parseInt(dataArr2[1]);
                Integer price = Integer.parseInt(dataArr2[2]);
                productService.updateProduct(id, quantity, price);
            }
        }
    }
}
