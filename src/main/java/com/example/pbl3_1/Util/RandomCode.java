package com.example.pbl3_1.Util;

import java.util.Random;

public class RandomCode {
    public static String RdCode()
    {
        String code = "";
        for(int i = 0; i < 6; i++)
        {
            Random rand = new Random();
            int randomNumber = Math.abs((rand.nextInt())%10);
            code += randomNumber;
        }
        return code;
    }
}
