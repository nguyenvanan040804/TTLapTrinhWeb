package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.model.User;
import vn.edu.hcmuaf.fit.demo.service.impl.CartServiceImpl;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/addtocart")
public class AddToCartServlet extends HttpServlet {
    private final CartServiceImpl cartService = new CartServiceImpl();
    private final ProductServiceImpl productService = new ProductServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String pid = request.getParameter("pid");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int userId = user.getId();
        // Nếu có thao tác add/remove
        if (action != null && pid != null) {
            int productId = Integer.parseInt(pid);
            switch (action) {
                case "add":
                    cartService.addToCartitem(userId, productId);
                    break;
                case "remove":
                    cartService.removeFromCartitem(userId, productId);
                    break;
            }
            List<Product> updatedCart = cartService.getCartByUserId(userId);
            Map<Product, String> productImageMap = new HashMap<>();
            for (Product p : updatedCart) {
                List<String> images = productService.getProductImages(p.getId());
                String image = (images != null && !images.isEmpty()) ? images.get(0) : "default-image.jpg";
                productImageMap.put(p, image);
            }

            session.setAttribute("cartlist", updatedCart);
            session.setAttribute("productImageMap", productImageMap);

            // Redirect để load lại trang wishlist
            response.sendRedirect("addtocart");
        } else {
            // Lấy wishlist bình thường
            List<Product> cartlist = cartService.getCartByUserId(userId);

            Map<Product, String> productImageMap = new HashMap<>();
            for (Product p : cartlist) {
                List<String> images = productService.getProductImages(p.getId());
                String image = (images != null && !images.isEmpty()) ? images.get(0) : "default-image.jpg";
                productImageMap.put(p, image);
            }
            request.setAttribute("productImageMap",productImageMap );
            request.setAttribute("cartlist", cartlist);
            request.getRequestDispatcher("add_to_cart.jsp").forward(request, response);
        }
    }
}
