package vn.edu.hcmuaf.fit.demo.service.impl;

import vn.edu.hcmuaf.fit.demo.dao.IObjectDao;
import vn.edu.hcmuaf.fit.demo.dao.impl.ProductDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.IObjectService;

import java.util.List;

public class ProductServiceImpl implements IObjectService<Product> {
    private ProductDaoImpl productDao = new ProductDaoImpl(DBConnect.getConnect());
    @Override
    public boolean add(Product pro) {
        return productDao.add(pro);
    }

    @Override
    public List<Product> getAll() {
        return productDao.getAll();
    }

    @Override
    public Product getById(int id) {
        return productDao.getById(id);
    }

    @Override
    public boolean deleteById(int id) {
        return productDao.deleteById(id);
    }

    @Override
    public boolean update(Product pro) {
        return productDao.update(pro);
    }
    public List<String> getProductImages(int productId) {
        return productDao.getProductImages(productId);
    }

    public static void main(String[] args) {
        ProductServiceImpl productService = new ProductServiceImpl();
        System.out.println(productService.getAll());
    }
}
