package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.demo.model.Cart;
import vn.edu.hcmuaf.fit.demo.model.CartProduct;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;

import java.io.IOException;

@WebServlet("/cart")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action != null) {
            switch (action) {
                case "add":
                    addToCart(request, response);
                    break;
                case "update":
                    updateCart(request, response);
                    break;
                case "remove":
                    removeFromCart(request, response);
                    break;
                default:
                    response.sendRedirect("cart.jsp");
                    break;
            }
        }
    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));

        ProductServiceImpl productService = new ProductServiceImpl();
        Product product = productService.getById(productId);

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        CartProduct cartProduct = cart.getItems().get(productId);
        if (cartProduct != null) {
            cartProduct.setQuantity(cartProduct.getQuantity() + 1);
            double totalPrice = cart.calculateTotalPrice();
            session.setAttribute("cartTotalPrice", totalPrice);
        } else {
            cartProduct = new CartProduct(product.getId(), product.getProName(), product.getPrice(), product.getThumb(), 1);
            cart.addProduct(cartProduct);
            double totalPrice = cart.calculateTotalPrice();
            session.setAttribute("cartTotalPrice", totalPrice);
        }
        response.sendRedirect("cart.jsp");
    }
    private void updateCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart != null) {
            if (quantity == 0) {
                cart.removeProduct(productId);
            } else {
                cart.updateProduct(productId, quantity);
            }
            // tính lại tổng giá và lưu session
            double totalPrice = cart.calculateTotalPrice();
            session.setAttribute("cartTotalPrice", totalPrice);
        }
        response.sendRedirect("cart.jsp");
    }

    private void removeFromCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart != null) {
            cart.removeProduct(productId);
            double totalPrice = cart.calculateTotalPrice();
            session.setAttribute("cartTotalPrice", totalPrice);
        }
        response.sendRedirect("cart.jsp");
    }
}