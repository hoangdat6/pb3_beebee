package com.example.pbl3_1.dao;

import com.example.pbl3_1.mapper.RowMapper;

import java.util.List;

public interface GenericDAO<T> {
    public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
    Integer update (String sql, Object... parameters);
    Long save (String sql, Object... parameters);
    Long count(String sql, Object... parameters);
    Object saveAll(String sql, List<T> parameters);
}
