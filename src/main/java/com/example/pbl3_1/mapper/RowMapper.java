package com.example.pbl3_1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface RowMapper<T> {
    public T mapRow(ResultSet rs) throws SQLException;
}
