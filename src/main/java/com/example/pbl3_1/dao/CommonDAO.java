package com.example.pbl3_1.dao;

public interface CommonDAO<T> {
    public void save(T object);
    public void update(T object);
    public void delete(T object);
    public T findById(int id);
}
