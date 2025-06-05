package vn.edu.hcmuaf.fit.demo.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import vn.edu.hcmuaf.fit.demo.dao.impl.ProductDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;

import java.io.IOException;
import java.sql.Connection;

@WebServlet("/admin/deleteProduct")
public class DeleteProductController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idRaw = request.getParameter("id");

        try {
            int id = Integer.parseInt(idRaw);
            Connection conn = DBConnect.getConnect();
            ProductDaoImpl dao = new ProductDaoImpl(conn);

            dao.delete(id); // Gọi method xóa sản phẩm
        } catch (Exception e) {
            e.printStackTrace(); // Log lỗi
        }

        // Quay lại danh sách
        response.sendRedirect(request.getContextPath() + "/admin/listProducts");
    }
}
