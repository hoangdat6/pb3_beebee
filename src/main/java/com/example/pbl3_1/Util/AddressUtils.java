package com.example.pbl3_1.Util;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.*;

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

