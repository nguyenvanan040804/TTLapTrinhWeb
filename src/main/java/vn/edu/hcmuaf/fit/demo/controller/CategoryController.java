package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.demo.model.Category;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.IObjectService;
import vn.edu.hcmuaf.fit.demo.service.impl.CateServiceImpl;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/category")
public class CategoryController extends HttpServlet {
    private IObjectService<Product> productService = new ProductServiceImpl();
    private IObjectService<Category> cateService = new CateServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = productService.getAll();
        request.setAttribute("products", products);
        List<Category> categories = cateService.getAll();
        request.setAttribute("category", categories);
        request.getRequestDispatcher("pageCategory.jsp").forward(request, response);

    }
}