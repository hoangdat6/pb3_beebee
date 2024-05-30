package com.example.pbl3_1.entity.myEnum;

public enum EShippingMethod {
    GIAO_HANG_NHANH((short) 1),
    HOA_TOC((short) 2),
    TU_LAY_HANG((short) 3);

    private final short value;
    EShippingMethod(short value) {
        this.value = value;
    }

    public short getValue() {
        return value;
    }

    public static EShippingMethod valueOf(short value) {
        switch (value) {
            case 1:
                return GIAO_HANG_NHANH;
            case 2:
                return HOA_TOC;
            case 3:
                return TU_LAY_HANG;
        }
        return null;
    }
}
