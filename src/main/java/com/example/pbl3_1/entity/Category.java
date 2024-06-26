package com.example.pbl3_1.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class Category {
    int id;
    String name;
    String imgPath;

    public Category() {
    }
    @Override
    public String toString() {
        return "Category(id=" + this.getId() + ", name=" + this.getName() + ", imgPath=" + this.getImgPath() + ")";
    }
}
