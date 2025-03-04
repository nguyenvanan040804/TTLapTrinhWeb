package vn.edu.hcmuaf.fit.demo.db;

import java.sql.*;

public class DBConnect {
    private static Connection conn;
    public static Connection getConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/bikeshop", "root", "");
            return conn;
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void executeQuery(String sql) {
        try {
            Connection conn = getConnect();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public ResultSet selectDataFromDB(String sql) {
        try {
            Connection conn = getConnect();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(sql);
            return rs;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
        System.out.println(getConnect());
    }
}
