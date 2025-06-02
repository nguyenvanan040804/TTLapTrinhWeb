package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.demo.dao.impl.OrderDaoImpl;
import vn.edu.hcmuaf.fit.demo.model.Cart;
import vn.edu.hcmuaf.fit.demo.model.CartProduct;
import vn.edu.hcmuaf.fit.demo.model.OrderItem;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.impl.ProductServiceImpl;

import java.io.IOException;
import java.util.List;

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
                case "checkout":
                    checkoutCart(request, response);
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
    private void checkoutCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        // Kiểm tra đăng nhập
        Integer userId = (Integer) session.getAttribute("userId");
        if (userId == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Lấy giỏ hàng
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null || cart.getItems().isEmpty()) {
            response.sendRedirect("cart.jsp");
            return;
        }

        // Tạo order và lưu vào DB
        OrderDaoImpl orderDao = new OrderDaoImpl() {

            public List<OrderItem> getOrderItemsByOrderId(int orderId) {
                return List.of();
            }
        };
        int orderId = orderDao.createOrder(userId);

        // Thêm từng sản phẩm trong cart vào order_item
        for (CartProduct item : cart.getItems().values()) {
            orderDao.addOrderItem(orderId, item.getProductId(), item.getQuantity());
        }

        // Lưu orderId vào session để sử dụng trong checkout.jsp
        session.setAttribute("orderId", orderId);

        // Chuyển hướng tới trang checkout
        response.sendRedirect("checkout");
    }


}