package com.example.pbl3_1.entity.myEnum;

public enum Egender {
    MALE, FEMALE, OTHER;
    public static Egender fromString(String gender){
        switch(gender) {
            case "male":
                return MALE;
            case "female":
                return FEMALE;
            default:
                return OTHER;
        }
    }
}
