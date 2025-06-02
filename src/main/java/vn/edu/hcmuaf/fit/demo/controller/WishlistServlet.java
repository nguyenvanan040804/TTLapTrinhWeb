package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.model.User;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;
import vn.edu.hcmuaf.fit.demo.service.impl.WishlistServiceImpl;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/wishlist")
public class WishlistServlet extends HttpServlet {
    private final WishlistServiceImpl wishlistService = new WishlistServiceImpl();
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
                    wishlistService.addToWishlist(userId, productId);
                    break;
                case "remove":
                    wishlistService.removeFromWishlist(userId, productId);
                    break;
            }
            List<Product> updatedWishlist = wishlistService.getWishlistByUserId(userId);
            Map<Product, String> productImageMap = new HashMap<>();
            for (Product p : updatedWishlist) {
                List<String> images = productService.getProductImages(p.getId());
                String image = (images != null && !images.isEmpty()) ? images.get(0) : "default-image.jpg";
                productImageMap.put(p, image);
            }

            session.setAttribute("wishlist", updatedWishlist);
            session.setAttribute("productImageMap", productImageMap);

            // Redirect để load lại trang wishlist
            response.sendRedirect("wishlist");
        } else {
            // Lấy wishlist bình thường
            List<Product> wishlist = wishlistService.getWishlistByUserId(userId);

            Map<Product, String> productImageMap = new HashMap<>();
            for (Product p : wishlist) {
                List<String> images = productService.getProductImages(p.getId());
                String image = (images != null && !images.isEmpty()) ? images.get(0) : "default-image.jpg";
                productImageMap.put(p, image);
            }
            request.setAttribute("productImageMap",productImageMap );
            request.setAttribute("wishlist", wishlist);
            request.getRequestDispatcher("wishlist.jsp").forward(request, response);
        }
    }
}