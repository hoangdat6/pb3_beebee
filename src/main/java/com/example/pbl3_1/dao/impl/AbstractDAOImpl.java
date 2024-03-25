package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.Util.JDBCUtil;
import com.example.pbl3_1.mapper.RowMapper;
import jakarta.inject.Inject;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AbstractDAOImpl<T> implements GenericDAO<T> {

    public Long save(String sql, Object ...parameters) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            Long id = null;
            connection = JDBCUtil.getInstance().getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            setParameter(statement, parameters);
            statement.executeUpdate();
            resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                id = resultSet.getLong(1);
            }
            connection.commit();
            return id;
        } catch (SQLException e) {
            if (connection != null) {
                try {
                    connection.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            }
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
            } catch (SQLException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    @Override
    public Long count(String sql, Object... parameters) {
        Connection con = JDBCUtil.getInstance().getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = (con == null) ? null : con.prepareStatement(sql);
            setParameter(ps, parameters);
            rs = ps.executeQuery();

            if(rs.next()){
                return rs.getLong(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return 0L;
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
        return 0L;
    }


    public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object ...parameters){
        Connection con = JDBCUtil.getInstance().getConnection();
        PreparedStatement ps = null;
        List<T> list = new ArrayList<>();
        ResultSet rs = null;
        try {
            ps = (con == null) ? null : con.prepareStatement(sql);
            setParameter(ps, parameters);
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


    private void setParameter(PreparedStatement ps, Object... parameters) {
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
