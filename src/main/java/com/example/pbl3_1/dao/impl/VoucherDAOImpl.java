package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.dao.VoucherDAO;
import com.example.pbl3_1.entity.Voucher;

import java.sql.Timestamp;

public class VoucherDAOImpl implements VoucherDAO {
    GenericDAO<Voucher> genericDAO = new AbstractDAOImpl<>();

    @Override
    public Long addVoucher(Voucher voucher) {
        String sql = "INSERT INTO voucher (seller_id, code, name, MOQ, discount_rate, max_discount,min_apply, start_date, end_date, quantity, voucher_location_type, voucher_money_type, voucher_access_type, created_at, updated_at) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        return genericDAO.save(sql
                , voucher.getSellerId()
                , voucher.getCode()
                , voucher.getName()
                , voucher.getMOQ()
                , voucher.getDiscountRate()
                , voucher.getMaxDiscount()
                , voucher.getMinApply()
                , voucher.getStartDate()
                , voucher.getEndDate()
                , voucher.getQuantity()
                , voucher.getVoucherLocationType()
                , voucher.getVoucherMoneyType()
                , voucher.getVoucherAccessType()
                ,new Timestamp(System.currentTimeMillis())
                ,new Timestamp(System.currentTimeMillis())
        );
    }
}
