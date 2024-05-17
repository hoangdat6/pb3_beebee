package com.example.pbl3_1.Util;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.product.SellerDTO;

import java.util.List;

public class TwoListContainer {
    public List<ProductPreviewDTO> list1;
    public List<SellerDTO> list2;

    public TwoListContainer(List<ProductPreviewDTO> list1, List<SellerDTO> list2) {
        this.list1 = list1;
        this.list2 = list2;
    }
}
