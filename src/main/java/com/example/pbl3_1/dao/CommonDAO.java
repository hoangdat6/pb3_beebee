package com.example.pbl3_1.dao;

public interface CommonDAO<T> {
    public Long save(T object);
    public Integer update(T object);
    public void deleteById(Long id);
    public T findById(int id);
}
