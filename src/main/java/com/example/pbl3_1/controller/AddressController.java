package com.example.pbl3_1.controller;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.controller.user_login.CheckLoggedUser;
import com.example.pbl3_1.entity.Address;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.AddressService;
import com.example.pbl3_1.service.impl.AddressServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.util.List;

@WebServlet(name ="address", urlPatterns = "/usersetting/address")
public class AddressController extends HttpServlet {
    public final AddressService addressService = new AddressServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        if (CheckLoggedUser.checkLoggedUser(request, response, "/usersetting/address")) {
            User userLogin = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
            List<Address> list = addressService.getByIdUser(userLogin.getId());
            String appPath = request.getServletContext().getRealPath("/");
            String filePath = appPath + "usersetting/data.json";
            AddressUtils addressUtils = new AddressUtils(filePath);
            for (Address item : list){
                item.setWard(addressUtils.getWardName(item.getProvince(),item.getDistrict(),item.getWard()));
                item.setDistrict(addressUtils.getDistrictName(item.getProvince(),item.getDistrict()));
                item.setProvince(addressUtils.getCityName(item.getProvince()));
            }
            request.setAttribute("address", list);
            request.getRequestDispatcher("/usersetting/Location.jsp").forward(request, response);
        }
    }

    public class AddressUtils {
        private JSONArray cities;

        public AddressUtils(String jsonFilePath) {
            try {
                InputStream inputStream = new FileInputStream(jsonFilePath);
                InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                StringBuilder stringBuilder = new StringBuilder();
                String line;
                while ((line = bufferedReader.readLine()) != null) {
                    stringBuilder.append(line);
                }
                String jsonString = stringBuilder.toString();
                inputStream.close();
                cities = new JSONArray(jsonString);
            } catch (IOException | JSONException e) {
                e.printStackTrace();
            }
        }

        public String getCityName(String cityId) {
            try {
                for (int i = 0; i < cities.length(); i++) {
                    JSONObject city = cities.getJSONObject(i);
                    if (city.getString("Id").equals(cityId)) {
                        return city.getString("Name");
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return null;
        }

        public String getDistrictName(String cityId, String districtId) {
            try {
                for (int i = 0; i < cities.length(); i++) {
                    JSONObject city = cities.getJSONObject(i);
                    if (city.getString("Id").equals(cityId)) {
                        JSONArray districts = city.getJSONArray("Districts");
                        for (int j = 0; j < districts.length(); j++) {
                            JSONObject district = districts.getJSONObject(j);
                            if (district.getString("Id").equals(districtId)) {
                                return district.getString("Name");
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return null;
        }

        public String getWardName(String cityId, String districtId, String wardId) {
            try {
                for (int i = 0; i < cities.length(); i++) {
                    JSONObject city = cities.getJSONObject(i);
                    if (city.getString("Id").equals(cityId)) {
                        JSONArray districts = city.getJSONArray("Districts");
                        for (int j = 0; j < districts.length(); j++) {
                            JSONObject district = districts.getJSONObject(j);
                            if (district.getString("Id").equals(districtId)) {
                                JSONArray wards = district.getJSONArray("Wards");
                                for (int k = 0; k < wards.length(); k++) {
                                    JSONObject ward = wards.getJSONObject(k);
                                    if (ward.getString("Id").equals(wardId)) {
                                        return ward.getString("Name");
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return null;
        }
    }
}
