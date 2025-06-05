package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.demo.dao.impl.ProductDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Product;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet("/admin/listProducts")
public class ListProductController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = DBConnect.getConnect();
        ProductDaoImpl productDao = new ProductDaoImpl(conn);

        // Lấy danh sách sản phẩm từ database
        List<Product> listProducts = productDao.getAll();

        System.out.println("DEBUG: Số sản phẩm lấy được = " + listProducts.size());


        // Gửi danh sách sản phẩm sang trang JSP
        request.setAttribute("listProducts", listProducts);
        request.getRequestDispatcher("listProducts.jsp").forward(request, response);
    }



}

