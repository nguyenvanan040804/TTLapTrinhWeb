package vn.edu.hcmuaf.fit.demo.dao;

import vn.edu.hcmuaf.fit.demo.model.Product;

import java.util.List;

public interface IObjectDao<T> {
    boolean add(T obj);

    List<T> getAll();

    T getById(int id);

    boolean deleteById(int id);

    boolean update(T obj);

}
