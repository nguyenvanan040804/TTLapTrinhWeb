package vn.edu.hcmuaf.fit.demo.controller.admin;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.IObjectService;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/products")
public class ProductController extends HttpServlet {
    private final static IObjectService<Product> productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null || action.isEmpty()) {
            listProducts(request, response);
        } else {
            switch (action) {
                case "get":
                    getProductById(request, response);
                    break;
                case "delete":
                    deleteProduct(request, response);
                    break;
                default:
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Hanh dong khong hop le");
            }
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        if (productService.deleteById(id)) {
            response.sendRedirect("/admin/products?action=list");
        } else {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Loi khong the xoa san pham");
        }
    }

    private void getProductById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.getById(id);
        if (product != null) {
            request.setAttribute("product", product);
            request.getRequestDispatcher("/admin/product-detail.jsp").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "San pham khong ton tai");
        }
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = productService.getAll();
        request.setAttribute("products", products);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null || action.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Hanh dong khong hop le");
        } else {
            switch (action) {
                case "add":
                    addProduct(request, response);
                    break;
                case "update":
                    updateProduct(request, response);
                    break;
                default:
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Hanh dong khong hop le");
            }
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String proName = request.getParameter("proName");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        String thumb = request.getParameter("thumb");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int cateId = Integer.parseInt(request.getParameter("cateId"));

        Product product = new Product(id, proName, price, description, thumb, quantity, cateId);
        if (productService.update(product)) {
            response.sendRedirect("/admin/products?action=list");
        } else {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Loi khong the cap nhat san pham");
        }
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String proName = request.getParameter("proName");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        String thumb = request.getParameter("thumb");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int cateId = Integer.parseInt(request.getParameter("cateId"));

        Product product = new Product(proName, price, description, thumb, quantity, cateId);
        if (productService.add(product)) {
            response.sendRedirect("/admin/products?action=list");
        } else {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Khong the them san pham");
        }
    }
}