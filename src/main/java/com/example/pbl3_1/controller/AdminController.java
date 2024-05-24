package com.example.pbl3_1.controller;

import com.example.pbl3_1.controller.dto.admin.ShopStatisticDTO;
import com.example.pbl3_1.controller.dto.admin.UserStatisticDTO;
import com.example.pbl3_1.service.UserManageService;
import com.example.pbl3_1.service.impl.UserMannageServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@WebServlet(name = "AdminController", urlPatterns = {"/admin", "/admin/usermanage", "/searchCustomer", "/searchSeller",  "/getCustomerByID", "/lockAccount", "/lockShop", "/getAllCustomer", "/getAllSeller"})
public class AdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        UserManageService ums = new UserMannageServiceImpl();

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();

        switch (action) {
            case "/admin":
                resp.sendRedirect(req.getContextPath() + "/admin/usermanage");
                break;
            case "/admin/usermanage":
                List<UserStatisticDTO> customers = ums.getAllCustomer();
                req.setAttribute("ListData", customers);
                req.getRequestDispatcher("userManage.jsp").forward(req, resp);
                break;
            case "/getAllCustomer":
                List<UserStatisticDTO> allCustomers = ums.getAllCustomer();
                String allCustomersJson = gson.toJson(allCustomers);
                resp.getWriter().write(allCustomersJson);
                break;
            case "/getAllSeller":
                List<UserStatisticDTO> allShops = ums.getAllSeller();
                String allShopsJson = gson.toJson(allShops);
                resp.getWriter().write(allShopsJson);
                break;
            case "/searchCustomer":
                String userSearch = req.getParameter("val");
                List<UserStatisticDTO> searchResults = ums.searchCustomers(userSearch);

                String searchJson = gson.toJson(searchResults);
                resp.getWriter().write(searchJson);
                break;
            case "/searchSeller":
                String sellerSearch = req.getParameter("val");
                List<UserStatisticDTO> searchSellerResults = ums.searchSeller(sellerSearch);

                String searchSellerJson = gson.toJson(searchSellerResults);
                resp.getWriter().write(searchSellerJson);
                break;
            case "/getCustomerByID":
                System.out.println("Ok");
                String Strid = req.getParameter("user_id");
                Boolean isUserID = req.getParameter("isUserID").equals("true");
                Long id = Long.parseLong(Strid);

                UserStatisticDTO customer;
                ShopStatisticDTO shop;

                if (isUserID) {
                    // Get the customer by ID (if it exists)
                    customer = ums.getCustomerById(id);
                    shop = ums.getShopById(id);
                    // Create a new Map to hold both objects
                }
                else{
                    customer = ums.getCustomerByShopId(id);
                    shop = ums.getShopByShopId(id);
                }
                Map<String, Object> map = new HashMap<>();
                map.put("customer", customer);
                if (shop != null)
                    map.put("shop", shop);

                // Convert the Map to JSON
                String jsonResponse = gson.toJson(map);

                // Send the JSON response
                resp.getWriter().write(jsonResponse);
                break;
            case "/lockAccount":
                String lockId = req.getParameter("user_id");
                Long lockID = Long.parseLong(lockId);
                boolean checkUnlockOrLock = ums.lockAccount(lockID);

                Map<String, Boolean> lockMap = new HashMap<String, Boolean>();
                lockMap.put("status", checkUnlockOrLock);

                String lockJson = gson.toJson(lockMap);
                resp.getWriter().write(lockJson);
                break;
            case "/lockShop":
                String lockShopId = req.getParameter("shop_id");
                Long lockShopID = Long.parseLong(lockShopId);
                boolean checkLockOrUnlock = ums.lockShop(lockShopID);

                Map<String, Boolean> lockShopMap = new HashMap<String, Boolean>();
                lockShopMap.put("status", checkLockOrUnlock);

                String lockShopJson = gson.toJson(lockShopMap);
                resp.getWriter().write(lockShopJson);
                break;
            case "/productmanage":
                // code to handle product management
                break;
            default:
                break;
        }
    }
}
