package vn.edu.hcmuaf.fit.demo.service;

import java.util.List;

public interface IObjectService<T> {
    boolean add (T obj);

    List<T> getAll();

    T getById(int id);

    boolean deleteById(int id);

    boolean update(T obj);
}
