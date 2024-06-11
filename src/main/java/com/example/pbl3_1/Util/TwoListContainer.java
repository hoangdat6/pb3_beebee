package com.example.pbl3_1.Util;

import com.example.pbl3_1.controller.dto.product.ProductPreviewDTO;
import com.example.pbl3_1.controller.dto.seller.SellerDTO;

import java.util.List;

public class TwoListContainer {
    public List<ProductPreviewDTO> list1;
    public List<SellerDTO> list2;
    public int TotalPage;
    public TwoListContainer(List<ProductPreviewDTO> list1, List<SellerDTO> list2, int TotalPage) {
        this.list1 = list1;
        this.list2 = list2;
        this.TotalPage = TotalPage;
    }
}
