package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.AddressUtils;
import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.dto.cart.CartInfoDTO;
import com.example.pbl3_1.controller.dto.checkout.CheckOutInfoDTO;
import com.example.pbl3_1.controller.dto.checkout.ProductForCheckOut;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.PaymentMethod;
import com.example.pbl3_1.entity.ShippingMethod;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.OrderService;
import com.example.pbl3_1.service.PaymentMethodService;
import com.example.pbl3_1.service.ShippingMethodService;
import com.example.pbl3_1.service.impl.AddressServiceImpl;
import com.example.pbl3_1.service.impl.OrderServiceImpl;
import com.example.pbl3_1.service.impl.PaymentMethodServiceImpl;
import com.example.pbl3_1.service.impl.ShippingMethodServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "orderController", urlPatterns = {"/check-out", "/order-detail", "/order-history"})
public class OrderController extends HttpServlet {
    private final OrderService orderService = new OrderServiceImpl();
    private final AddressService addressService = new AddressServiceImpl();
    private final ShippingMethodService shippingMethodService = new ShippingMethodServiceImpl();
    private final PaymentMethodService paymentMethodService = new PaymentMethodServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/check-out":
                showCheckOutPage(request, response);
                break;
            case "/order-detail":
                request.getRequestDispatcher("/WEB-INF/views/order/order-detail.jsp").forward(request, response);
                break;
            case "/order-history":
                request.getRequestDispatcher("/WEB-INF/views/order/order-history.jsp").forward(request, response);
                break;
        }
    }

    public void showCheckOutPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Map<Object, Object>> orderDetail = (List<Map<Object, Object>>) request.getSession().getAttribute("orderDetail");

        if(orderDetail == null) {
            response.sendRedirect("cart");
            return;
        }

        User user = (User) request.getSession().getAttribute("USERMODEL");

        List<Long> shoppingCartItemId = new ArrayList<>();
        for (Map<Object, Object> objectMap : orderDetail) {
            if (objectMap.get("shoppingCartItemId") != null)
                shoppingCartItemId.add(Long.parseLong(objectMap.get("shoppingCartItemId").toString()));
        }

        // Get shipping method
        String shippingMethodId = orderDetail.get(orderDetail.size() - 1).get("shippingMethod").toString();
        Short id = Short.parseShort(shippingMethodId);
        ShippingMethod shippingMethod = shippingMethodService.getShippingMethodById(id);
        List<PaymentMethod> paymentMethods = paymentMethodService.getPaymentMethods();


        // Get check out info
        List<CartInfoDTO> checkOutInfoDTOs = orderService.getCartInfoDTO(shoppingCartItemId);
        for (CartInfoDTO checkOutInfoDTO : checkOutInfoDTOs) {
            checkOutInfoDTO.setShippingMethod(shippingMethod);
        }

        // Get default address
        Address address = addressService.getDefaultAddressByUserId(user.getId());
        if(address != null){
            String appPath = request.getServletContext().getRealPath("/");
            String filePath = appPath + "usersetting/data.json";
            AddressUtils addressUtils = new AddressUtils(filePath);

            address.setWard(addressUtils.getWardName(address.getProvince(),address.getDistrict(),address.getWard()));
            address.setDistrict(addressUtils.getDistrictName(address.getProvince(),address.getDistrict()));
            address.setProvince(addressUtils.getCityName(address.getProvince()));
        }

        SessionUtil.getInstance().putValue(request, "checkOutInfoDTOs", checkOutInfoDTOs);
        SessionUtil.getInstance().putValue(request, "shippingMethodId", shippingMethod.getShippingMethod().getValue());
        request.setAttribute("address", address);
        request.setAttribute("paymentMethods", paymentMethods);
        request.setAttribute("checkOutInfoDTOs", checkOutInfoDTOs);
        request.getRequestDispatcher("CheckOut.jsp").forward(request, response);
    }
}
