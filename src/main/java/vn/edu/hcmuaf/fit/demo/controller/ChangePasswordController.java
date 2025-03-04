package vn.edu.hcmuaf.fit.demo.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;

@WebServlet("/changePassword")
public class ChangePasswordController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        if (username == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("error", "Mật khẩu mới không khớp!");
            request.getRequestDispatcher("pageUser.jsp").forward(request, response);
            return;
        }

        try (Connection conn = DBConnect.getConnect();
             PreparedStatement ps = conn.prepareStatement("SELECT password FROM users WHERE username = ?")) {

            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String hashedPassword = rs.getString("password");

                    if (!BCrypt.checkpw(currentPassword, hashedPassword)) {
                        request.setAttribute("error", "Mật khẩu hiện tại không đúng!");
                        request.getRequestDispatcher("pageUser.jsp").forward(request, response);
                        return;
                    }

                    // Hash mật khẩu mới
                    String newHashedPassword = BCrypt.hashpw(newPassword, BCrypt.gensalt(12));

                    // Cập nhật mật khẩu
                    try (PreparedStatement updatePs = conn.prepareStatement("UPDATE users SET password = ? WHERE username = ?")) {
                        updatePs.setString(1, newHashedPassword);
                        updatePs.setString(2, username);
                        updatePs.executeUpdate();
                    }

                    request.setAttribute("message", "Đổi mật khẩu thành công!");
                    request.getRequestDispatcher("pageUser.jsp").forward(request, response);
                } else {
                    request.setAttribute("error", "Người dùng không tồn tại!");
                    request.getRequestDispatcher("pageUser.jsp").forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Lỗi hệ thống!");
            request.getRequestDispatcher("pageUser.jsp").forward(request, response);
        }
    }
}
