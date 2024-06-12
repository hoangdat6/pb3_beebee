package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.entity.Voucher;
import com.example.pbl3_1.service.VoucherService;
import com.example.pbl3_1.service.impl.VoucherServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(name = "voucherApi", urlPatterns = {"/api/add_voucher"})

public class VoucherApi extends HttpServlet {
    public final VoucherService voucherService = new VoucherServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        Voucher voucher = new Voucher(Long.parseLong(req.getParameter("sellerId")), req.getParameter("code"), req.getParameter("name"), Integer.parseInt(req.getParameter("MOQ")),
                Integer.parseInt(req.getParameter("discountRate")), Integer.parseInt(req.getParameter("maxDiscount")),Integer.parseInt(req.getParameter("minApply")),
                Timestamp.valueOf(req.getParameter("startDate")), Timestamp.valueOf(req.getParameter("endDate")), Integer.parseInt(req.getParameter("quantity")),
                Integer.parseInt(req.getParameter("voucherLocationType")), Integer.parseInt(req.getParameter("voucherMoneyType"))
                , Integer.parseInt(req.getParameter("voucherAccessType")));
        System.out.println(voucher);
        voucherService.addVoucher(voucher);
    }
}
