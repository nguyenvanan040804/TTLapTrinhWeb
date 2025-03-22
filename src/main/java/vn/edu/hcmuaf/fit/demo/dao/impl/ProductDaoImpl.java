package vn.edu.hcmuaf.fit.demo.dao.impl;

import vn.edu.hcmuaf.fit.demo.dao.IObjectDao;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements IObjectDao<Product> {
    Connection conn;

    public ProductDaoImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean add(Product product) {
        String sql = "insert into products (proName, price, description, thumb, quantity, cateId) " +
                "values (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, product.getProName());
            ps.setInt(2, product.getPrice());
            ps.setString(3, product.getDescription());
            ps.setString(4, product.getThumb());
            ps.setInt(5, product.getQuantity());
            ps.setInt(6, product.getCateId());

            return ps.executeUpdate() > 0;
        }catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from products";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Product(
                        rs.getInt("id"),
                        rs.getString("proName"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("thumb"),
                        rs.getInt("quantity"),
                        rs.getInt("cateId")
                ));
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Product getById(int id) {
        String sql = "select * from products where id = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                return new Product(
                        rs.getInt("id"),
                        rs.getString("proName"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("thumb"),
                        rs.getInt("quantity"),
                        rs.getInt("cateId")
                );
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean deleteById(int id) {
        String sql = "delete from products where id = ?";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(Product product) {
        String sql = "update products set "
                + "proName = ?, price = ?, description = ?, thumb = ?, "
                + "cateId = ? WHERE id = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, product.getProName());
            ps.setInt(2, product.getPrice());
            ps.setString(3, product.getDescription());
            ps.setString(4, product.getThumb());
            ps.setInt(5, product.getQuantity());
            ps.setInt(6, product.getCateId());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    public List<String> getProductImages(int productId) {
        List<String> images = new ArrayList<>();
        String sql = "select path from product_img where productId = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                images.add(rs.getString("path"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return images;
    }

    public static void main(String[] args) {
        ProductDaoImpl productDao = new ProductDaoImpl(DBConnect.getConnect());
        System.out.println(productDao.getProductImages(1));
    }
}
