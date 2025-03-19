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
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/category")
public class CategoryController extends HttpServlet {
    private final ProductServiceImpl productService = new ProductServiceImpl();
    private final CateServiceImpl categoryService = new CateServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        try {
            System.out.println("DEBUG: Đã vào doGet của CategoryController");

            String cateIdParam = request.getParameter("cateId");
            System.out.println("DEBUG: cateIdParam = " + cateIdParam);

            List<Category> cate = categoryService.getAll();
            List<Product> pd = productService.getProductsByCategory(Integer.parseInt(cateIdParam));
            for (Product p : pd) {
                System.out.println("DEBUG: " + p.getId() + " - " + p.getCateId() + " - " + p.getProName());
            }

            System.out.println("DEBUG: Có " + pd.size() + " sản phẩm được truyền đến JSP");
            List<Product> productList = new ArrayList<>(pd);
            request.setAttribute("categories", cate);
            request.setAttribute("products", pd);
            request.setAttribute("selectedCategoryId", cateIdParam);

            request.getRequestDispatcher("pageCategory.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

