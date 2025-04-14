package vn.edu.hcmuaf.fit.demo.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.demo.dao.impl.ProductDaoImpl;
import vn.edu.hcmuaf.fit.demo.model.Category;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.IObjectService;
import vn.edu.hcmuaf.fit.demo.service.impl.CateServiceImpl;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;

@WebServlet("/filterProducts")
public class FilterProductServlet extends HttpServlet {
    private final ProductServiceImpl productService = new ProductServiceImpl();
    private final CateServiceImpl categoryService = new CateServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String minPriceStr = request.getParameter("minPrice");
        String maxPriceStr = request.getParameter("maxPrice");
        String sort = request.getParameter("sort");

        // Nếu không có giá trị sort, mặc định là "name"
        if (sort == null || sort.isEmpty()) {
            sort = "name";  // Mặc định sắp xếp theo tên sản phẩm
        }

        Double minPrice = (minPriceStr != null && !minPriceStr.isEmpty()) ? Double.parseDouble(minPriceStr) : null;
        Double maxPrice = (maxPriceStr != null && !maxPriceStr.isEmpty()) ? Double.parseDouble(maxPriceStr) : null;

        List<Product> products = productService.getFilteredProducts(name, minPrice, maxPrice, sort);
        System.out.println("Number of products found: " + products.size());
        request.setAttribute("products", products);

        request.getRequestDispatcher("pageCategory.jsp").forward(request, response);
    }
}

