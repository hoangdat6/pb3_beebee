package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.ResponseEntityDTO;
import com.example.pbl3_1.controller.dto.cart.CartInfoDTO;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.entity.myEnum.EPaymentMethod;
import com.example.pbl3_1.entity.myEnum.EShippingMethod;
import com.example.pbl3_1.service.OrderService;
import com.example.pbl3_1.service.impl.OrderServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "checkOutApi", urlPatterns = {"/api/checkout"})
public class CheckOutApi extends HttpServlet {
    private final OrderService orderService = new OrderServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        ObjectMapper mapper = new ObjectMapper();

        Map<String, Object> dataOrder = mapper.readValue(request.getReader(), Map.class);

        Long addressId = dataOrder.get("addressId") != null ? Long.parseLong(dataOrder.get("addressId").toString()) : null;
        Short paymentMethodId = dataOrder.get("paymentMethodId") != null ? Short.parseShort(dataOrder.get("paymentMethodId").toString()) : null;
        Short shippingMethodId = SessionUtil.getInstance().getValue(
                request, "shippingMethodId") != null
                ? Short.parseShort(SessionUtil.getInstance().getValue(request, "shippingMethodId").toString())
                : null;

        Integer paymentTotal = dataOrder.get("paymentTotal") != null ? Integer.parseInt(dataOrder.get("paymentTotal").toString()) : null;
        SessionUtil.getInstance().putValue(request, "paymentTotal", paymentTotal);
        SessionUtil.getInstance().putValue(request, "paymentMethodId", paymentMethodId);

        EPaymentMethod paymentMethod = paymentMethodId != null ? EPaymentMethod.valueOf(paymentMethodId) : null;
        EShippingMethod shippingMethod = shippingMethodId != null ? EShippingMethod.valueOf(shippingMethodId) : null;

        List<CartInfoDTO> checkOutInfoDTOs = (List<CartInfoDTO>) SessionUtil.getInstance().getValue(request, "checkOutInfoDTOs");

        User user = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");

        ResponseEntityDTO responseEntityDTO = new ResponseEntityDTO();
        responseEntityDTO.setCode(200);
        try {
            String ids = orderService.createOrder(checkOutInfoDTOs, addressId, shippingMethod, paymentMethod, user.getId());
            SessionUtil.getInstance().putValue(request, "IDS", ids);
        }catch(Exception e){
//            e.printStackTrace();
            responseEntityDTO.setCode(409);
            responseEntityDTO.setMessage(e.getMessage());
        }
        mapper.writeValue(response.getOutputStream(), responseEntityDTO);
    }
}
