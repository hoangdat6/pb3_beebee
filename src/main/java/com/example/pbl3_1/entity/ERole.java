package com.example.pbl3_1.entity;

public enum ERole {
    ADMIN, SELLER, CUSTOMER;

    public static ERole fromString(String role) {
        switch (role) {
            case "ADMIN":
                return ADMIN;
            case "SELLER":
                return SELLER;
            case "CUSTOMER":
                return CUSTOMER;
            default:
                return null;
        }
    }
}
