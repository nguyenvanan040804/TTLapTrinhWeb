package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.demo.model.User;
import vn.edu.hcmuaf.fit.demo.service.IUserService;
import vn.edu.hcmuaf.fit.demo.service.impl.UserServiceImpl;
import vn.edu.hcmuaf.fit.demo.utils.Email;

import java.io.IOException;

@WebServlet(urlPatterns = {"/PasswordRecovery"})
public class PassController extends HttpServlet {
    IUserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURL().toString();
        if(url.contains("PasswordRecovery")) {
            request.getRequestDispatcher("./forgotPass.jsp").forward(request, response);
        }else {
            homePage(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURL().toString();
        if(url.contains("PasswordRecovery")) {
            postForgotPass(request, response);
        }
    }
    // forgot password với method post
    public void postForgotPass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        User user = userService.findOne(username);
        if(user.getEmail().equals(email) && user.getUserName().equals(username)) {
            Email sm = new Email();
            boolean test = sm.emailSend(user);
            if (test) {
                request.setAttribute("message", "Vui lòng kiểm tra email để nhận mật khẩu");
            } else {
                request.setAttribute("error", "Lỗi không gửi được email");
            }
        }else {
            request.setAttribute("error", "username hoặc email không tồn tại");
            request.getRequestDispatcher("./forgotPass.jsp").forward(request, response);
            return;
        }
        request.getRequestDispatcher("./forgotPass.jsp").forward(request, response);
}

    public void homePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("./home.jsp").forward(request, response);
    }

}