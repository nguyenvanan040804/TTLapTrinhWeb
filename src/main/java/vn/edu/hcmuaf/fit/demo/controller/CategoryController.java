package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.demo.dao.impl.CategoryDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Category;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/categories")
public class CategoryController extends HttpServlet {
    protected CategoryDaoImpl categoryDao;

    @Override
    public void init() throws ServletException {
        categoryDao = new CategoryDaoImpl(DBConnect.getConnect());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy danh sách danh mục từ cơ sở dữ liệu
        List<Category> categories = categoryDao.getAll();
        request.setAttribute("categories", categories); // Gửi dữ liệu tới JSP
        request.getRequestDispatcher("categories.jsp").forward(request, response); // Forward đến JSP
    }
}

