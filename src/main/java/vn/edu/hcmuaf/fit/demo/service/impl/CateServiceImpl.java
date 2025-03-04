package vn.edu.hcmuaf.fit.demo.service.impl;

import vn.edu.hcmuaf.fit.demo.dao.IObjectDao;
import vn.edu.hcmuaf.fit.demo.dao.impl.CategoryDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Category;
import vn.edu.hcmuaf.fit.demo.service.IObjectService;

import java.util.List;

public class CateServiceImpl implements IObjectService<Category> {
    private IObjectDao<Category> cateDao = new CategoryDaoImpl(DBConnect.getConnect());
    @Override
    public boolean add(Category obj) {
        return cateDao.add(obj);
    }

    @Override
    public List<Category> getAll() {
        return cateDao.getAll();
    }

    @Override
    public Category getById(int id) {
        return cateDao.getById(id);
    }

    @Override
    public boolean deleteById(int id) {
        return cateDao.deleteById(id);
    }

    @Override
    public boolean update(Category obj) {
        return cateDao.update(obj);
    }

    public static void main(String[] args) {
        CateServiceImpl cateService = new CateServiceImpl();
        System.out.println(cateService.getAll());
    }
}
