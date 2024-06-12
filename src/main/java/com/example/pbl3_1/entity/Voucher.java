package com.example.pbl3_1.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class Voucher {
    private  long id;
    private long sellerId;
    private String code;
    private String name;
    private int MOQ;
    private int discountRate;
    private int maxDiscount;
    private int minApply;
    private Timestamp startDate;
    private Timestamp endDate;
    private int quantity;
    private int voucherLocationType;
    private int voucherMoneyType;
    private int voucherAccessType;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    public Voucher(long sellerId, String code, String name, int MOQ, int discountRate, int maxDiscount,int minApply, Timestamp startDate, Timestamp endDate, int quantity, int voucherLocationType, int voucherMoneyType, int voucherAccessType) {
        this.sellerId = sellerId;
        this.code = code;
        this.name = name;
        this.MOQ = MOQ;
        this.discountRate = discountRate;
        this.maxDiscount = maxDiscount;
        this.minApply = minApply;
        this.startDate = startDate;
        this.endDate = endDate;
        this.quantity = quantity;
        this.voucherLocationType = voucherLocationType;
        this.voucherMoneyType = voucherMoneyType;
        this.voucherAccessType = voucherAccessType;
    }

    @Override
    public String toString() {
        return "Voucher{" +
                "id=" + id +
                ", sellerId=" + sellerId +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", MOQ=" + MOQ +
                ", discountRate=" + discountRate +
                ", maxDiscount=" + maxDiscount +
                ", minApply=" + minApply +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", quantity=" + quantity +
                ", voucherLocationType=" + voucherLocationType +
                ", voucherMoneyType=" + voucherMoneyType +
                ", voucherAccessType=" + voucherAccessType +
                '}';
    }
}

