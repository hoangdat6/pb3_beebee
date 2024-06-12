package com.example.pbl3_1.service.impl;

import com.example.pbl3_1.dao.VoucherDAO;
import com.example.pbl3_1.dao.impl.VoucherDAOImpl;
import com.example.pbl3_1.entity.Voucher;
import com.example.pbl3_1.service.VoucherService;

public class VoucherServiceImpl implements VoucherService {
    private final VoucherDAO voucherDAO = new VoucherDAOImpl();
    @Override
    public Long addVoucher(Voucher voucher) {
        return voucherDAO.addVoucher(voucher);
    }
}
