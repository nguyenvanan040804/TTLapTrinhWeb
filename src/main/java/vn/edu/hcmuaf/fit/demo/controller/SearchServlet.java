package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    private final ProductServiceImpl productService = new ProductServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        System.out.println("DEBUG: Từ khóa tìm kiếm - " + keyword);

        List<Product> searchResults = new ArrayList<>();
        if (keyword != null && !keyword.trim().isEmpty()) {
            searchResults = productService.searchProducts(keyword);
        }

        System.out.println("DEBUG: Số sản phẩm tìm thấy - " + searchResults.size());
        request.setAttribute("searchResults", searchResults);
        request.setAttribute("keyword", keyword);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

}
