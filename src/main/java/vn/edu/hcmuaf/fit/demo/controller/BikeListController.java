package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.demo.dao.impl.ProductDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;

import java.io.IOException;
import java.sql.Connection;

@WebServlet("/admin/bikeList")
public class BikeListController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Kết nối database
        Connection conn = DBConnect.getConnect();
        ProductDaoImpl productDao = new ProductDaoImpl(conn);

        // Lấy danh sách xe đạp (cateId = 1)
//        List<Product> bikes = productDao.getBikes();

        // Gửi danh sách đến JSP
//        request.setAttribute("bikes", bikes);
        request.getRequestDispatcher("bikeList.jsp").forward(request, response);
    }
}
