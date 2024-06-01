package com.example.pbl3_1.controller.dto.admin;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Builder
@Getter
@Setter
@AllArgsConstructor
public class UserStatisticDTO {
    String id;
    String name;
    String email;
    Boolean is_locked;
    Date createdAt;
    String phone;
    Long total;
    String imgPath;
    String shopImgPath;
}
