package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.demo.model.Category;
import vn.edu.hcmuaf.fit.demo.model.GoogleUser;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.model.User;
import vn.edu.hcmuaf.fit.demo.service.IObjectService;
import vn.edu.hcmuaf.fit.demo.service.impl.CateServiceImpl;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;

import java.io.IOException;
import java.util.List;

@WebServlet("/home")
public class HomeController extends HttpServlet {
    private IObjectService<Product> productService = new ProductServiceImpl();
    private IObjectService<Category> cateService = new CateServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        if (session != null && session.getAttribute("account") != null) {
            Object accountObj = session.getAttribute("account");

            System.out.println("đã tìm thấy thuộc tính account trong session: " + accountObj);

            if (accountObj instanceof User) {
                User user = (User) accountObj;
                request.setAttribute("user", user);
                System.out.println("User thường: " + user.getUserName());
            } else if (accountObj instanceof GoogleUser) {
                GoogleUser googleUser = (GoogleUser) accountObj;
                request.setAttribute("user", googleUser);
            } else {
                System.out.println("Đối tượng trong session không hợp lệ!");
            }

        } else {
            System.out.println("Không tìm thấy session user!");
        }

        List<Product> products = productService.getAll();
        request.setAttribute("products", products);
        List<Category> categories = cateService.getAll();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/home.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}