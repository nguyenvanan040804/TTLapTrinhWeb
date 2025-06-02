package vn.edu.hcmuaf.fit.demo.service.impl;

import vn.edu.hcmuaf.fit.demo.dao.IObjectDao;
import vn.edu.hcmuaf.fit.demo.controller.*;
import vn.edu.hcmuaf.fit.demo.dao.impl.*;
import vn.edu.hcmuaf.fit.demo.db.*;
import vn.edu.hcmuaf.fit.demo.model.*;
import vn.edu.hcmuaf.fit.demo.service.*;
import vn.edu.hcmuaf.fit.demo.utils.TextUtils;

import java.util.List;
import java.util.stream.Collectors;

public class ProductServiceImpl implements IObjectService<Product> {
    private ProductDaoImpl productDao = new ProductDaoImpl(DBConnect.getConnect());
    private List<Product> products;
    public ProductServiceImpl() {
        this.products = productDao.getAll(); // Lấy tất cả sản phẩm từ database khi khởi tạo
    }
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
        if (keyword == null || keyword.trim().isEmpty()) {
            return List.of(); // Trả về danh sách rỗng nếu không có từ khóa
        }

        String keywordNoAccent = TextUtils.removeAccent(keyword.toLowerCase());
        System.out.println("DEBUG: Từ khóa tìm kiếm không dấu - " + keywordNoAccent);

        for (Product p : products) {
            System.out.println("DEBUG: Sản phẩm - " + p.getProName() + " | Không dấu: " + TextUtils.removeAccent(p.getProName()));
        }

        return products.stream()
                .filter(p -> TextUtils.removeAccent(p.getProName().toLowerCase()).contains(keywordNoAccent))
                .collect(Collectors.toList());
    }


    public List<Product> getFilteredProducts(Double minPrice, Double maxPrice, String sort) {
        List<Product> filteredProducts = productDao.getAll(); // Lấy tất cả sản phẩm từ database


        // Lọc theo giá nếu có
        if (minPrice != null) {
            filteredProducts = filteredProducts.stream()
                    .filter(p -> p.getPrice() >= minPrice)
                    .collect(Collectors.toList());
        }

        if (maxPrice != null) {
            filteredProducts = filteredProducts.stream()
                    .filter(p -> p.getPrice() <= maxPrice)
                    .collect(Collectors.toList());
        }

        // Sắp xếp theo tiêu chí
        switch (sort) {
            case "name":
                filteredProducts.sort((p1, p2) -> p1.getProName().compareToIgnoreCase(p2.getProName()));
                break;
            case "price":
                filteredProducts.sort((p1, p2) -> Double.compare(p1.getPrice(), p2.getPrice()));
                break;
            default:
                // Mặc định sắp xếp theo ID nếu không có tiêu chí rõ ràng
                filteredProducts.sort((p1, p2) -> Integer.compare(p1.getId(), p2.getId()));
                break;
        }

        return filteredProducts;
    }

    public static void main(String[] args) {
        ProductServiceImpl productService = new ProductServiceImpl();
        System.out.println(productService.getAll());
    }


}
