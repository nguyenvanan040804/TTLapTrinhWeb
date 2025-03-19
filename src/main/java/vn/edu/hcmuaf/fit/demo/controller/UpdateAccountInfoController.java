package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.demo.dao.impl.UserDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.User;

import java.io.IOException;

@WebServlet("/updateAccountInfo")
public class UpdateAccountInfoController extends HttpServlet {
    private UserDaoImpl userDaoImpl;

    @Override
    public void init() throws ServletException {
        userDaoImpl = new UserDaoImpl(DBConnect.getConnect());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("account");
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Lấy tham số từ request

        String fullName = request.getParameter("fullName");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

        // Kiểm tra null và xử lý

//        fullName = (fullName != null) ? fullName.trim() : "";
//        address = (address != null) ? address.trim() : "";
//        email = (email != null) ? email.trim() : "";


        // Kiểm tra định dạng email
//        if (!email.matches("^[\\w.%+-]+@[\\w.-]+\\.[a-zA-Z]{2,6}$")) {
//            request.setAttribute("error", "Địa chỉ email không hợp lệ.");
//            request.getRequestDispatcher("pageUser.jsp").forward(request, response);
//            return;
//        }

        try {
            // Cập nhật thông tin người dùng

            user.setFullName(fullName);
            user.setAddress(address);
            user.setEmail(email);

            userDaoImpl.update(user);

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

