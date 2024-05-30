package com.example.pbl3_1.entity.myEnum;

public enum EOrderStatus {
    CHO_THANH_TOAN((short) 1),
    CHO_XAC_NHAN((short) 2),
    VAN_CHUYEN((short) 3),
    CHO_GIAO_HANG((short) 4),
    HOAN_THANH((short) 5),
    DA_HUY((short) 6);

    private final short value;

    EOrderStatus(short i) {
        value = i;
    }

    public short getValue() {
        return value;
    }

    public static EOrderStatus valueOf(short value) {
        switch (value) {
            case 1:
                return CHO_THANH_TOAN;
            case 2:
                return CHO_XAC_NHAN;
            case 3:
                return VAN_CHUYEN;
            case 4:
                return CHO_GIAO_HANG;
            case 5:
                return HOAN_THANH;
            case 6:
                return DA_HUY;
        }
        return null;
    }
}
