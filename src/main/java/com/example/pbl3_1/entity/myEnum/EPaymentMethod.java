package com.example.pbl3_1.entity.myEnum;

public enum EPaymentMethod {
    THANH_TOAN_KHI_NHAN_HANG((short) 1),
    THANH_TOAN_QR((short) 2);

    private final short value;
    EPaymentMethod(short value) {
        this.value = value;
    }
    public short getValue() {
        return value;
    }

    public static EPaymentMethod valueOf(short value) {
        switch (value) {
            case 1:
                return THANH_TOAN_KHI_NHAN_HANG;
            case 2:
                return THANH_TOAN_QR;
        }
        return null;
    }
}
