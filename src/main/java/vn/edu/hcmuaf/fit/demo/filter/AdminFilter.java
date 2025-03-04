package vn.edu.hcmuaf.fit.demo.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.demo.model.User;

import java.io.IOException;

@WebFilter(urlPatterns = "/admin/*")
public class AdminFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        HttpSession session = req.getSession(false);
        Object obj = session.getAttribute("account");
        if (obj instanceof User) {
            User user = (User) obj;
            if (user.getRoleId() == 1) {
                chain.doFilter(request, response);
                return;
            }
        }
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        // Nếu không có quyền, trả về lỗi 403 và giữ nguyên trang
        resp.setStatus(HttpServletResponse.SC_FORBIDDEN); // 403 Forbidden
        response.getWriter().write("<h1>403 Forbidden</h1><p>Bạn không có quyền truy cập vào tài nguyên này.</p>");
        response.getWriter().flush();
    }
}