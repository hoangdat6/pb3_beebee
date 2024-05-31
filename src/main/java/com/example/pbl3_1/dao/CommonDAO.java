package com.example.pbl3_1.dao;

public interface CommonDAO<T> {
    Long save(T object);
    Object update(T object);
    void deleteById(Long id);
    T findById(int id);
}
