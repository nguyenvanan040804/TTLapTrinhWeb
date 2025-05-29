package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.model.User;
import vn.edu.hcmuaf.fit.demo.service.impl.WishlistServiceImpl;

import java.io.IOException;
import java.util.List;

@WebServlet("/wishlist")
public class WishlistServlet extends HttpServlet {
    private final WishlistServiceImpl wishlistService = new WishlistServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String pidStr = request.getParameter("pid");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int userId = user.getId();
        // Nếu có thao tác add/remove
        if (action != null && pidStr != null) {
            int productId = Integer.parseInt(pidStr);
            switch (action) {
                case "add":
                    wishlistService.addToWishlist(userId, productId);
                    break;
                case "remove":
                    wishlistService.removeFromWishlist(userId, productId);
                    break;
            }
            List<Product> updatedWishlist = wishlistService.getWishlistByUserId(userId);
            session.setAttribute("wishlist", updatedWishlist);

            // Sau khi thao tác xong, redirect về chính nó để load danh sách
            response.sendRedirect("wishlist");
        } else {
            List<Product> wishlist = wishlistService.getWishlistByUserId(userId);
            System.out.println("Số lượng sản phẩm yêu thích: " + wishlist.size());
            for (Product p : wishlist) {
                System.out.println(" - " + p.getProName() + " | id: " + p.getId());}// lấy từ DB
            request.setAttribute("wishlist", wishlist);
            request.getRequestDispatcher("wishlist.jsp").forward(request, response);
        }
    }
}