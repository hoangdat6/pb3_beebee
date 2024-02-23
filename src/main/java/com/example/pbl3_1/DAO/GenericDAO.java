package com.example.pbl3_1.DAO;

import com.example.pbl3_1.mapper.RowMapper;

import java.util.List;

public interface GenericDAO<T> {
    <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
    void update (String sql, Object... parameters);
    Long save (String sql, Object... parameters);
    int count(String sql, Object... parameters);
}
