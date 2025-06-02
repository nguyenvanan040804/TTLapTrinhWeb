package vn.edu.hcmuaf.fit.demo.dao.impl;

import vn.edu.hcmuaf.fit.demo.dao.IUserDao;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements IUserDao {
    private Connection conn;

    public UserDaoImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public void insertRegister(User user) {
        String sql = "insert into users (roleId, userName, fullName, passWord, email, phone, address, status, code) values (?, ?, " +
                "?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = DBConnect.getConnect();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, user.getRoleId());
            ps.setString(2, user.getUserName());
            ps.setString(3, user.getFullName());
            ps.setString(4, user.getPassWord());
            ps.setString(5, user.getEmail());
            ps.setString(6, user.getPhone());
            ps.setString(7, user.getAddress());
            ps.setInt(8, user.getStatus());
            ps.setString(9, user.getCode());
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void updateStatus(User user) {
        String sql = "update users set status = ?, code = ? where email  = ?";
        try {
            conn = DBConnect.getConnect();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, user.getStatus());
            ps.setString(2, user.getCode());
            ps.setString(3, user.getEmail());
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean checkExistEmail(String email) {
        boolean duplicate = false;
        String sql = "select * from users where email = ?";
        try {
            conn = DBConnect.getConnect();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                duplicate = true;
            }
            ps.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return duplicate;
    }

    @Override
    public boolean checkExistUsername(String username) {
        boolean duplicate = false;
        String sql = "select * from users where userName = ?";
        try {
            conn = DBConnect.getConnect();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                duplicate = true;
            }
            ps.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return duplicate;
    }

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        String sql = "select * from users";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(
                        rs.getInt("id"),
                        rs.getInt("roleId"),
                        rs.getString("userName"),
                        rs.getString("fullName"),
                        rs.getString("email"),
                        rs.getString("passWord"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("status"),
                        rs.getString("code"));
                        users.add(user);
            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public User findOne(int id) {
        String sql = "select * from users where id = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(
                        rs.getInt("id"),
                        rs.getInt("roleId"),
                        rs.getString("userName"),
                        rs.getString("fullName"),
                        rs.getString("email"),
                        rs.getString("passWord"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("status"),
                        rs.getString("code"));
            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public User findOne(String username) {
        String sql = "select * from users where userName = ?";
        System.out.println("username: " + username);
        User user = null;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            System.out.println("ps: " + ps);
            ResultSet rs = ps.executeQuery();
            System.out.println("rs: " + rs);
            if (rs.next()) {
                user = new User(
                        rs.getInt("id"),
                        rs.getInt("roleId"),
                        rs.getString("userName"),
                        rs.getString("fullName"),
                        rs.getString("email"),
                        rs.getString("passWord"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("status"),
                        rs.getString("code"));

            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        return user;
    }

    public static void main(String[] args) {
        UserDaoImpl userDao = new UserDaoImpl(DBConnect.getConnect());
        System.out.println(userDao.findOne("batuan"));
    }

    @Override
    public void insert(User user) {
        String sql = "insert into users(roleId, userName, fullName, email, passWord, phone, address, status, code) " +
                "values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, user.getRoleId());
            ps.setString(2, user.getUserName());
            ps.setString(3, user.getFullName());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getPassWord());
            ps.setString(6, user.getPhone());
            ps.setString(7, user.getAddress());
            ps.setInt(8, user.getStatus());
            ps.setString(9, user.getCode());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

       public void insertUserGoogle(User user) {
        String sql = "insert into users(roleId, userName, fullName, email, passWord, phone, address, status, code, googleId) " +
                "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, user.getRoleId());
            ps.setString(2, user.getUserName());
            ps.setString(3, user.getFullName());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getPassWord());
            ps.setString(6, user.getPhone());
            ps.setString(7, user.getAddress());
            ps.setInt(8, user.getStatus());
            ps.setString(9, user.getCode());
            System.out.println(user.getGoogleId());
            ps.setString(10, user.getGoogleId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(User user) {
        String sql = "UPDATE users SET roleId = ?, userName = ?, fullName = ?, email = ?, " +
                "passWord = ?, phone = ?, address = ?, status = ?, code = ? WHERE id = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);

            // Thiết lập các tham số cho câu lệnh SQL
            ps.setInt(1, user.getRoleId());
            ps.setString(2, user.getUserName());
            ps.setString(3, user.getFullName());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getPassWord());
            ps.setString(6, user.getPhone());
            ps.setString(7, user.getAddress());
            ps.setInt(8, user.getStatus());
            ps.setString(9, user.getCode());
            ps.setInt(10, user.getId()); // Chắc chắn bạn phải đặt id của user

            // In ra thông tin user để kiểm tra
            System.out.println("Updating user: " + user);

            // Thực thi câu lệnh cập nhật
            int rowsUpdated = ps.executeUpdate();

            // Kiểm tra kết quả của câu lệnh update
            if (rowsUpdated > 0) {
                System.out.println("User updated successfully.");
            } else {
                System.out.println("No rows were updated.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        String sql = "delete from users where id = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public User findByUserNameAndEmail(String username, String email) {
        User user = null;
        String sql = "select * from users where username = ? and email = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                user = new User();
                user.setUserName(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setPassWord(rs.getString("password"));
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public User findOneByGooleId(String googleId) {
        String sql = "select * from users where googleId = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, googleId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User user = new User(
                        rs.getInt("id"),
                        rs.getInt("roleId"),
                        rs.getString("userName"),
                        rs.getString("fullName"),
                        rs.getString("email"),
                        rs.getString("passWord"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getInt("status"),
                        rs.getString("code"));

                user.setGoogleId(rs.getString("googleId"));
                return user;
            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public boolean updatePassword(String username, String newPassword) {
        String sql = "UPDATE Account SET password = ? WHERE username = ?";
        try (Connection conn = DBConnect.getConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, newPassword);
            stmt.setString(2, username);

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
