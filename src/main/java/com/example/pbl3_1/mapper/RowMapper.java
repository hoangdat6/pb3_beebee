package com.example.pbl3_1.mapper;

import java.sql.ResultSet;

public interface RowMapper<T> {
    public T mapRow(ResultSet rs);
}
