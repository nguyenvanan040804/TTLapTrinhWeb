package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;

import java.io.IOException;
import java.util.List;

@WebServlet("/detail")
public class DetailController extends HttpServlet {
    ProductServiceImpl productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        if (pid != null && !pid.isEmpty()) {
            int productId = Integer.parseInt(pid);
            Product detail = productService.getById(productId);
            List<String> images = productService.getProductImages(productId);
            request.setAttribute("productImages", images);
            request.setAttribute("proDetail", detail);
            request.getRequestDispatcher("pageSingle.jsp").forward(request, response);
        } else {
            response.sendRedirect("/detail");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}