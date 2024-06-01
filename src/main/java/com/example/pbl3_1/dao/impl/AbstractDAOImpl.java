package com.example.pbl3_1.dao.impl;

import com.example.pbl3_1.dao.GenericDAO;
import com.example.pbl3_1.Util.JDBCUtil;
import com.example.pbl3_1.entity.ProductItem;
import com.example.pbl3_1.mapper.RowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class AbstractDAOImpl<T> implements GenericDAO<T> {

    public Long save(String sql, Object ...parameters) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        try {
            Long id = null;
            con = JDBCUtil.getInstance().getConnection();
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            setParameter(ps, 0, parameters);
            ps.executeUpdate();
            resultSet = ps.getGeneratedKeys();
            if (resultSet.next()) {
                id = resultSet.getLong(1);
            }
            con.commit();
            return id;
        } catch (SQLException e) {
            e.printStackTrace();
            if (con != null) {
                try {
                    con.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            }
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (ps != null) {
                    ps.close();
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
            setParameter(ps, 0, parameters);
            rs = Objects.requireNonNull(ps).executeQuery();

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

    @Override
    public Object saveAll(String sql, List<T> parameters) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = JDBCUtil.getInstance().getConnection();
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql);
            for (int i = 0; i < parameters.size(); i++){
                setObject(ps, i, parameters.get(i));
            }
            Integer i = ps.executeUpdate();
            con.commit();
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
            if (con != null) {
                try {
                    con.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            }

        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    @Override
    public Object delete(String sql, Object... parameters) {
        Connection con = JDBCUtil.getInstance().getConnection();
        PreparedStatement ps = null;
        try {
            con = JDBCUtil.getInstance().getConnection();
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql);
            setParameter(ps, 0,  parameters);
            Object rowCnt = Objects.requireNonNull(ps).executeUpdate();
            con.commit();
            return rowCnt;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if(ps != null)
                    ps.close();
                if(con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }


    public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object ...parameters){
        Connection con = JDBCUtil.getInstance().getConnection();
        PreparedStatement ps = null;
        List<T> list = new ArrayList<>();
        ResultSet rs = null;
        try {
            ps = (con == null) ? null : con.prepareStatement(sql);
            setParameter(ps, 0,  parameters);
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
    public Object update(String sql, Object... parameters) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        try {
            con = JDBCUtil.getInstance().getConnection();
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            setParameter(ps, 0, parameters);
            Integer id = ps.executeUpdate();
            con.commit();
            return id;
        } catch (SQLException e) {
            e.printStackTrace();
            if (con != null) {
                try {
                    con.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            }
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (ps != null) {
                    ps.close();
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

    private void setObject(PreparedStatement ps, int index, T obj){
        if(obj instanceof ProductItem){
            ProductItem productItem = (ProductItem) obj;
            setParameter(ps , index,
                    productItem.getProductId(),
                    productItem.getImgPath(),
                    productItem.getVariation1(),
                    productItem.getVariation2(),
                    productItem.getQtyInStock(),
                    productItem.getPrice()
            );
        }
    }

    private void setParameter(PreparedStatement ps, int index, Object... parameters) {
        try {
            index = index * parameters.length + 1;
            for (int i = index; i <= index + parameters.length - 1; ++i) {
                Object parameter = parameters[i - index];

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
                }else if(parameter instanceof Short) {
                    ps.setShort(i, (Short) parameter);
                }else{
                    ps.setNull(i, Types.NULL);
                }
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
