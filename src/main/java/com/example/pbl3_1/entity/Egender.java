package com.example.pbl3_1.entity;

public enum Egender {
    MALE, FEMALE, OTHER;
    public static Egender fromString(String gender){
        switch(gender) {
            case "MALE":
                return MALE;
            case "FEMALE":
                return FEMALE;
            default:
                return OTHER;
        }
    }
}
