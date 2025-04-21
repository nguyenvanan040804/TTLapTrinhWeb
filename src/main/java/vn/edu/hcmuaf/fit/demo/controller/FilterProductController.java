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
public class FilterProductController extends HttpServlet {
    private final ProductServiceImpl productService = new ProductServiceImpl();
    private final CateServiceImpl categoryService = new CateServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String minPriceStr = request.getParameter("minPrice");
        String maxPriceStr = request.getParameter("maxPrice");
        String sort = request.getParameter("sort");

        if (sort == null) sort = "price";

        Double minPrice = (minPriceStr != null && !minPriceStr.isEmpty()) ? Double.parseDouble(minPriceStr) : null;
        Double maxPrice = (maxPriceStr != null && !maxPriceStr.isEmpty()) ? Double.parseDouble(maxPriceStr) : null;

        List<Product> products = productService.getFilteredProducts(minPrice, maxPrice, sort);
        System.out.println("Number of products found: " + products.size());
        request.setAttribute("products", products);

        request.getRequestDispatcher("pageSearch.jsp").forward(request, response);
    }
}

