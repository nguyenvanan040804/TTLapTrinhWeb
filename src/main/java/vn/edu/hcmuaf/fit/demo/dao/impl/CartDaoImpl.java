package vn.edu.hcmuaf.fit.demo.dao.impl;

import vn.edu.hcmuaf.fit.demo.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDaoImpl {
    Connection conn;

    public CartDaoImpl(Connection conn) {
        this.conn = conn;
    }
    public void insert(int userId, int productId) {
        String sql = "INSERT IGNORE INTO cart(user_id, product_id) VALUES (?, ?)";
        try (
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, userId);
            ps.setInt(2, productId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(int userId, int productId) {
        String sql = "DELETE FROM cart WHERE user_id=? AND product_id=?";
        try (
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, userId);
            ps.setInt(2, productId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Product> getCartByUser(int userId) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT p.* FROM cart w JOIN products p ON w.product_id = p.id WHERE w.user_id=?";
        try (
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setProName(rs.getString("proName")); // hoặc "name" nếu cột là "name"
                p.setPrice(rs.getInt("price"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
