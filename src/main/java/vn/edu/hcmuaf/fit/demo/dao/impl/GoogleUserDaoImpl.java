package vn.edu.hcmuaf.fit.demo.dao.impl;

import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.GoogleUser;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GoogleUserDaoImpl {
    private Connection conn ;

    public GoogleUserDaoImpl(Connection conn) {
        this.conn = conn;
    }

    // Lấy thông tin người dùng Google theo id (kiểu String)
    public GoogleUser getById(String id) {
        String sql = "SELECT * FROM google_users WHERE id = ?";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new GoogleUser(
                        rs.getString("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("picture"),
                        rs.getString("passWord")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Cập nhật thông tin người dùng Google
    public boolean update(GoogleUser gUser) {
        String sql = "UPDATE google_users SET name = ?, email = ?, address = ?, picture = ? WHERE id = ?";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, gUser.getFullName());
            ps.setString(2, gUser.getEmail());
            ps.setString(3, gUser.getAddress());
            ps.setString(4, gUser.getPicture());
            ps.setString(5, gUser.getId());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public GoogleUser getUserByEmail(String email) {
        String sql = "SELECT * FROM google_users WHERE email = ?";
        try (Connection conn = DBConnect.getConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new GoogleUser(
                        rs.getString("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("picture"),
                        rs.getString("passWord"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public void insert(GoogleUser gUser) throws SQLException {
        String sql = "INSERT INTO google_users (id, name, email, address, picture, passWord) " +
                "VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, gUser.getId());
            ps.setString(2, gUser.getFullName());
            ps.setString(3, gUser.getEmail());
            ps.setString(4, gUser.getAddress());
            ps.setString(5, gUser.getPicture());
            ps.setString(6, gUser.getPassWord());
            ps.executeUpdate();
        }
    }

}

