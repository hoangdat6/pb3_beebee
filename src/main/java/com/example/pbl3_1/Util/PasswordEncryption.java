package com.example.pbl3_1.Util;

import java.security.MessageDigest;
import org.apache.tomcat.util.codec.binary.Base64;
public class PasswordEncryption {
    public static String ToSHA1(String password, String key)
    {
        String salt = "dalskjgoiqe@!%dfkljgiowr&^(*$%^";
        password = key + password + salt;
        String result = null;
        try {
            byte [] dataBytes = password.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            result = Base64.encodeBase64String(md.digest(dataBytes));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
