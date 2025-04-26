package com.example.dao;

import java.util.List;

public interface DataOperations<T> {
    void create(T item);
    T read(int id);
    List<T> readAll();
    void update(T item);
    void delete(int id);
}