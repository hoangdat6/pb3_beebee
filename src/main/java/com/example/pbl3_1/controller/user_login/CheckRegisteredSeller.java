package com.example.pbl3_1.controller.user_login;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.service.SellerService;
import com.example.pbl3_1.service.impl.SellerServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class CheckRegisteredSeller {
    public static boolean checkRegisteredSeller(HttpServletRequest request, HttpServletResponse response, String url, Long userId) throws IOException {
        SellerService sellerService = new SellerServiceImpl();
        if(sellerService.getIdByUserId(userId) == null){
            SessionUtil.getInstance().putValue(request, "redirect", url);
            response.sendRedirect(request.getContextPath() + "/seller/account/register?message=register_required&alert=danger");
            return false;
        }
        return true;
    }
}
