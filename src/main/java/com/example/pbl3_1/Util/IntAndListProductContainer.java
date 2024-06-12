package com.example.pbl3_1.Util;

import com.example.pbl3_1.controller.dto.product.ProductManagementDTO;

import java.util.List;

public class IntAndListProductContainer {
    public List<ProductManagementDTO> list;
    public int totalPage;
    public int currentPage;
    public IntAndListProductContainer(List<ProductManagementDTO> list, int totalPage, int currentPage) {
        this.list = list;
        this.totalPage = totalPage;
        this.currentPage = currentPage;
    }
}
