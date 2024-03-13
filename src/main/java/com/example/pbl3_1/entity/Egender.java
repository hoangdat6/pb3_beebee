package com.example.pbl3_1.entity;

public enum Egender {
    male, female, other;
    public static Egender fromString(String gender){
        switch(gender) {
            case "male":
                return male;
            case "female":
                return female;
            default:
                return other;
        }
    }
}
