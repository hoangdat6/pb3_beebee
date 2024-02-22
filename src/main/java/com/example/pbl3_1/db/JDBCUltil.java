package com.example.pbl3_1.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUltil {
    private static Connection con = null;

    public static Connection getConnection(){
        String url = "jdbc:mysql://localhost:3306/shop_bee";
        String username = "root";
        String password = "dat123";

        try {
            if(con == null)
                con = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return con;
    }

    public static void closeConnection(Connection con){
        try {
            if(con != null){
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
