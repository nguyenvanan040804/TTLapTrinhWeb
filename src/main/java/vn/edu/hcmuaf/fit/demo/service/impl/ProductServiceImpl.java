package vn.edu.hcmuaf.fit.demo.service.impl;

import vn.edu.hcmuaf.fit.demo.dao.IObjectDao;
import vn.edu.hcmuaf.fit.demo.controller.*;
import vn.edu.hcmuaf.fit.demo.dao.impl.*;
import vn.edu.hcmuaf.fit.demo.db.*;
import vn.edu.hcmuaf.fit.demo.model.*;
import vn.edu.hcmuaf.fit.demo.service.*;

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

    public List<Product> getProductsByCategory(int cateId) {
        List<Product> products = productDao.getProductsByCategory(cateId);
        System.out.println("DEBUG: Service nhận được " + products.size() + " sản phẩm từ DAO");
        return products;
    }

    public List<Product> searchProducts(String keyword) {
        return productDao.searchProducts(keyword); //Đã gọi DAO để lấy dữ liệu
    }

    public static void main(String[] args) {
        ProductServiceImpl productService = new ProductServiceImpl();
        System.out.println(productService.getAll());
    }
}
