package com.example.pbl3_1.entity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Timestamp;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class Seller {
    private Long id;
    private String avatar;
    private String shopName;
    private String description;
    private Long addressId;
    private Long userId;
    private Integer views;
    private Integer followers;
    private Boolean isLocked;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    public Seller() {
    }

    public String getAvatarMain(){
        return avatar.split(",")[0];
    }
}
