package com.example.pbl3_1.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class Role {
    private Short id;
    private ERole role;
}
