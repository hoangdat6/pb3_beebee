package com.example.pbl3_1.controller.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
@Getter
@Setter
@AllArgsConstructor
public class ResponseEntityDTO {
    Integer code;
    String message;
    Object data;

    public ResponseEntityDTO() {}
}
