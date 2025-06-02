    package vn.edu.hcmuaf.fit.demo.controller;

    import jakarta.servlet.RequestDispatcher;
    import jakarta.servlet.ServletException;
    import jakarta.servlet.annotation.WebServlet;
    import jakarta.servlet.http.HttpServlet;
    import jakarta.servlet.http.HttpServletRequest;
    import jakarta.servlet.http.HttpServletResponse;
    import jakarta.servlet.http.HttpSession;
    import vn.edu.hcmuaf.fit.demo.model.Cart;

    import java.io.IOException;

    @WebServlet("/checkout")
    public class CheckoutController extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // Lấy session hiện tại
            HttpSession session = request.getSession();
            // Lấy giỏ hàng từ session
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart != null && !cart.getItems().isEmpty()) {
                // Tính tổng giá trị đơn hàng
                double totalPrice = cart.calculateTotalPrice();
                // Tăng tổng giá trị thêm 10%
    //            totalPrice *= 1.1;
                // Lưu tổng giá trị mới vào session
                session.setAttribute("totalPrice", totalPrice);

                // Chuyển tiếp đến trang checkout.jsp
                RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
                dispatcher.forward(request, response);
            } else {
                // Nếu giỏ hàng trống, chuyển hướng về trang giỏ hàng với thông báo
                response.sendRedirect("cart.jsp?message=Giỏ hàng của bạn đang trống.");
            }
        }
    }
