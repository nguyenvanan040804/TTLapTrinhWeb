package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.demo.dao.impl.UserDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.User;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;

@WebServlet("/updateAccountInfo")
public class UpdateAccountInfoController extends HttpServlet {
    private UserDaoImpl userDaoImpl;

    @Override
    public void init() throws ServletException {
        userDaoImpl = new UserDaoImpl(DBConnect.getConnect());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("account");
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Lấy dữ liệu từ request
        String newFullName = request.getParameter("fullName");
        String newAddress = request.getParameter("address");
        String newEmail = request.getParameter("email");
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        try {
            // Kiểm tra nếu input rỗng thì giữ nguyên dữ liệu cũ
            String fullName = (newFullName == null || newFullName.trim().isEmpty()) ? user.getFullName() : newFullName;
            String address = (newAddress == null || newAddress.trim().isEmpty()) ? user.getAddress() : newAddress;
            String email = (newEmail == null || newEmail.trim().isEmpty()) ? user.getEmail() : newEmail;

            // Cập nhật thông tin tài khoản
            user.setFullName(fullName);
            user.setAddress(address);
            user.setEmail(email);

            // Kiểm tra nếu người dùng muốn đổi mật khẩu
            boolean changePassword = (newPassword != null && !newPassword.isEmpty());
            if (changePassword) {
                // Kiểm tra mật khẩu hiện tại có đúng không
                if (!currentPassword.trim().equals(user.getPassWord().trim())) {
                    request.setAttribute("error", "Mật khẩu hiện tại không đúng!");
                    request.getRequestDispatcher("pageUser.jsp").forward(request, response);
                    return;
                }

                // Kiểm tra xác nhận mật khẩu mới
                if (!newPassword.equals(confirmPassword)) {
                    request.setAttribute("error", "Mật khẩu mới không khớp!");
                    request.getRequestDispatcher("pageUser.jsp").forward(request, response);
                    return;
                }

                // Cập nhật mật khẩu mới (lưu trực tiếp không băm)
                System.out.println("Mật khẩu mới trước khi cập nhật: " + newPassword);
                user.setPassWord(newPassword);
            }
            System.out.println("Trước khi update: " + user.getFullName() + " - " + user.getPassWord());
            userDaoImpl.update(user);
            System.out.println("Sau khi update thành công!");

            // Lưu lại thông tin vào session
            request.getSession().setAttribute("account", user);
            request.setAttribute("message", "Thông tin tài khoản đã được cập nhật thành công.");

        } catch (Exception e) {
            request.setAttribute("error", "Đã xảy ra lỗi khi cập nhật thông tin. Vui lòng thử lại.");
            e.printStackTrace();
        }

        // Chuyển hướng về trang user.jsp
        request.getRequestDispatcher("pageUser.jsp").forward(request, response);
    }
}