package com.example.pbl3_1.DAO.impl;

import com.example.pbl3_1.DAO.GenericDAO;
import com.example.pbl3_1.Util.JDBCUtil;
import com.example.pbl3_1.mapper.RowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AbstractDAO<T> implements GenericDAO<T> {
    public Long save(String sql, Object ...parameters) {
//        Connection con = JDBCUltil.getConnection();
//        PreparedStatement ps = null;
//
//        try {
//            ps = con != null ? con.prepareStatement(sql) : null;
//
//            if(ps != null){
//                setParamater(ps, parameters);
//                ps.executeUpdate();
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
        return null;
    }

    @Override
    public int count(String sql, Object... parameters) {
        return 0;
    }

    public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object ...parameters){
        Connection con = JDBCUtil.getInstance().getConnection();
        PreparedStatement ps = null;
        List<T> list = new ArrayList<>();
        ResultSet rs = null;
        try {
            ps = (con == null) ? null : con.prepareStatement(sql);
            setParamater(ps, parameters);
            rs = ps.executeQuery();

            while(rs.next()){
                list.add(rowMapper.mapRow(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }finally {
            try {
                if(ps != null)
                    ps.close();
                if(con != null) {
                    con.close();
                }
                if(rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public void update(String sql, Object... parameters) {

    }


    private void setParamater(PreparedStatement ps, Object... parameters) {
        try {
            for (int i = 1; i <= parameters.length; ++i) {
                Object parameter = parameters[i - 1];

                if (parameter instanceof String) {
                    ps.setString(i, (String) parameter);
                } else if (parameter instanceof Integer) {
                    ps.setInt(i, (Integer) parameter);
                }else if(parameter instanceof Long) {
                    ps.setLong(i, (Long) parameter);
                }else if(parameter instanceof Boolean) {
                    ps.setBoolean(i, (Boolean) parameter);
                }else if (parameter instanceof Double) {
                    ps.setDouble(i, (Double) parameter);
                }else if(parameter instanceof Float) {
                    ps.setFloat(i, (Float) parameter);
                }else if(parameter instanceof Date) {
                    ps.setDate(i, (Date) parameter);
                }else if (parameter instanceof Timestamp) {
                    ps.setTimestamp(i, (Timestamp) parameter);
                }else{
                    ps.setNull(i, Types.NULL);
                }
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
