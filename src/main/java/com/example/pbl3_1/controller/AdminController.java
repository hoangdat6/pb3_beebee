package com.example.pbl3_1.controller;


import com.example.pbl3_1.controller.dto.admin.AdminOverviewStat;
import com.example.pbl3_1.controller.dto.admin.ShopStatisticDTO;
import com.example.pbl3_1.controller.dto.admin.UserStatisticDTO;
import com.example.pbl3_1.controller.dto.seller.Stats;
import com.example.pbl3_1.service.StatService;
import com.example.pbl3_1.service.UserManageService;
import com.example.pbl3_1.service.impl.StatServiceImpl;
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


@WebServlet(name = "AdminController",
        urlPatterns = {"/admin", "/admin/usermanage", "/searchCustomer", "/searchSeller",
                "/getCustomerByID", "/lockAccount", "/lockShop", "/getAllCustomer",
                "/getAllSeller", "/admin/statistic", "/admin/statistic/chart", "/admin/statistic/overview" })
public class AdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        UserManageService ums = new UserMannageServiceImpl();
        StatService stat = new StatServiceImpl();

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
            case "/admin/statistic":
                req.setAttribute("year", 2024);
                req.getRequestDispatcher("statistic.jsp").forward(req, resp);
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
                Short status = Short.parseShort(req.getParameter("status"));

                List<UserStatisticDTO> searchResults = ums.searchCustomers(userSearch, status);

                String searchJson = gson.toJson(searchResults);
                resp.getWriter().write(searchJson);
                break;
            case "/searchSeller":
                String sellerSearch = req.getParameter("val");
                Short sellerStatus = Short.parseShort(req.getParameter("status"));

                List<UserStatisticDTO> searchSellerResults = ums.searchSeller(sellerSearch, sellerStatus);

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
                    customer = ums.getCustomerById(id);
                    shop = ums.getShopById(id);
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
                lockMap.put("is_locked", checkUnlockOrLock);

                String lockJson = gson.toJson(lockMap);
                resp.getWriter().write(lockJson);
                break;
            case "/lockShop":
                String lockShopId = req.getParameter("shop_id");
                Long lockShopID = Long.parseLong(lockShopId);
                boolean checkLockOrUnlock = ums.lockShop(lockShopID);

                Map<String, Boolean> lockShopMap = new HashMap<String, Boolean>();
                lockShopMap.put("is_locked", checkLockOrUnlock);

                String lockShopJson = gson.toJson(lockShopMap);
                resp.getWriter().write(lockShopJson);
                break;
            case "/productmanage":
                break;
            case "/admin/statistic/chart":
                String year = req.getParameter("year");
                List<Stats> stats = stat.getStatsByYear(year);
                String statisticJson = gson.toJson(stats);
                resp.getWriter().write(statisticJson);
                break;
            case "/admin/statistic/overview":
                String timeTypeStr = req.getParameter("timeType");
                int timeType = Integer.parseInt(timeTypeStr);
                AdminOverviewStat overviewStats = stat.getOverviewStats(timeType);
                String overviewJson = gson.toJson(overviewStats);
                resp.getWriter().write(overviewJson);
                break;
            default:
                // code to handle default acton
                RequestDispatcher dispatcher = req.getRequestDispatcher("");
                dispatcher.forward(req, resp);
                break;
        }
    }
}
