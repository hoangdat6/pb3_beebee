package com.example.pbl3_1.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {
    private static JDBCUtil jdbcUtil = null;
    public  static JDBCUtil getInstance(){
        if(jdbcUtil == null){
            jdbcUtil = new JDBCUtil();
        }
        return jdbcUtil;
    }

    public Connection getConnection(){
        try {
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/shop_bee";
            String username = "root";
            String password = "dat123";


            con = DriverManager.getConnection(url, username, password);
            System.out.println(DriverManager.getDriver(url).toString());
            return con;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void closeConnection(Connection con){
        try {
            if(con != null){
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}