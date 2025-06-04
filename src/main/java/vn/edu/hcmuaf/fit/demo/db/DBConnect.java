package vn.edu.hcmuaf.fit.demo.db;

import java.sql.*;

public class DBConnect {
    private static final String URL = "jdbc:mysql://localhost:3306/bikeshop?useUnicode=true&characterEncoding=UTF-8";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    private static Connection conn;

    public static Connection getConnect() {
        try {
            if (conn == null || conn.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(URL, USER, PASSWORD);
            }
            return conn;
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException("Lỗi kết nối database", e);
        }
    }

    public void executeQuery(String sql) {
        try (Connection conn = getConnect();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Lỗi thực thi câu lệnh SQL", e);
        }
    }

    public ResultSet selectDataFromDB(String sql) {
        try {
            Connection conn = getConnect();
            PreparedStatement ps = conn.prepareStatement(sql);
            return ps.executeQuery(); // Sửa lỗi ở đây
        } catch (SQLException e) {
            throw new RuntimeException("Lỗi truy vấn dữ liệu", e);
        }
    }

    public static void main(String[] args) {
        System.out.println(getConnect())
        ;
    }
}
