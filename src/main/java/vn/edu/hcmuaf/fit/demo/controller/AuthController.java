package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.demo.model.User;
import vn.edu.hcmuaf.fit.demo.service.IUserService;
import vn.edu.hcmuaf.fit.demo.service.impl.UserServiceImpl;
import vn.edu.hcmuaf.fit.demo.utils.BCrypt;
import vn.edu.hcmuaf.fit.demo.utils.Constant;
import vn.edu.hcmuaf.fit.demo.utils.Email;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = {"/login", "/register", "/waiting", "/verifyCode", "/logout"})
public class AuthController extends HttpServlet {
    IUserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURL().toString();
        if(url.contains("register")) {
            getRegister(request, response);
        }else if(url.contains("login")) {
            getLogin(request, response);
        }else if(url.contains("waiting")) {
            getWaiting(request, response);
        }else if(url.contains("verifyCode")) {
            request.getRequestDispatcher("./verify.jsp").forward(request, response);
        }else if(url.contains("logout")) {
            getLogout(request, response);
        }else {
            homePage(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURL().toString();
        if(url.contains("register")) {
            postRegister(request, response);
        }else if(url.contains("login")) {
            postLogin(request, response);
        }else if(url.contains("verifyCode")) {
            postVerifyCode(request, response);
        }
    }
    // home với method get
    public void homePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("./home").forward(request, response);
    }
    public void getRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("./register.jsp").forward(request, response);
    }
    // register với method post
    public void postRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String rawPassword = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        String alertMsg = "";
        if(userService.checkExistEmail(email)) {
            alertMsg = "Email đã tồn tại";
            request.setAttribute("username", username);
            request.setAttribute("fullname", fullname);
            request.setAttribute("phone", phone);
            request.setAttribute("address", address);
            request.setAttribute("error", alertMsg);
            request.getRequestDispatcher("./register.jsp").forward(request, response);
        }else if(userService.checkExistUsername(username)) {
            alertMsg = "tài khoản đã tồn tại";
            request.setAttribute("email", email);
            request.setAttribute("fullname", fullname);
            request.setAttribute("phone", phone);
            request.setAttribute("address", address);
            request.setAttribute("error", alertMsg);
            request.getRequestDispatcher("./register.jsp").forward(request, response);
        }else {
            Email sm = new Email();
            // lấy số 6 chữ số
            String code = sm.getRandom();

            // Mã hóa mật khẩu
            String hashedPassword = BCrypt.hashPassword(rawPassword);

            // tạo user mới chứa tất cả thông tin
            User user = new User(username, fullname, email, hashedPassword, phone, address, code);

            boolean test = sm.sendEmail(user);
            if(test) {
                HttpSession session = request.getSession();
                session.setAttribute("account", user);

                boolean isSuccess = userService.register(username, fullname, email, hashedPassword, phone, address, code);
                if(isSuccess) {
                    response.sendRedirect(request.getContextPath() + "/verifyCode");
                }else {
                    alertMsg = "Lỗi hệ thống !";
                    request.setAttribute("username", username);
                    request.setAttribute("email", email);
                    request.setAttribute("fullname", fullname);
                    request.setAttribute("phone", phone);
                    request.setAttribute("address", address);
                    request.setAttribute("error", alertMsg);
                    request.getRequestDispatcher("./register.jsp").forward(request, response);
                }
            }else {
                PrintWriter out = response.getWriter();
                out.println("Lỗi khi gửi mail !");

            }
        }
    }
    // login với method Get
    public void getLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // check session
        HttpSession session = request.getSession(false);
        if(session != null && session.getAttribute("account") != null) {
            response.sendRedirect(request.getContextPath() + "./waiting");
            return;
        }
        // check cookie
        Cookie[] cookies = request.getCookies();
        if(cookies != null) {
            for (Cookie cookie : cookies) {
                if(cookie.getName().equals("username")) {
                    if (session == null) {
                        session = request.getSession(true);
                    }
                    session.setAttribute("username", cookie.getValue());
                    response.sendRedirect(request.getContextPath() + "./waiting");
                    return;
                }
            }
        }
        request.getRequestDispatcher("./login.jsp").forward(request, response);
    }
    // login với method Post
    public void postLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");

        boolean isRememberMe = "on".equals(remember);
        String alertMsg = "";
        if(username.isEmpty() || password.isEmpty()) {
            alertMsg = "Tài khoản hoặc mật khẩu không đúng";
            request.setAttribute("message", alertMsg);
            request.setAttribute("username", username);
            request.getRequestDispatcher("./login.jsp").forward(request, response);
            return;
        }
        User user = userService.login(username, password);
        if(user != null) {
            if(user.getStatus() == 1) {
                // tạo session
                HttpSession session = request.getSession();
                session.setAttribute("account", user);
                if(isRememberMe) {
                    saveRememberMe(response, username);
                }
                response.sendRedirect(request.getContextPath() + "/waiting");
            }else {
                alertMsg = "tài khoản đã bị khóa";
                request.setAttribute("error", alertMsg);
                request.setAttribute("username", username);
                request.getRequestDispatcher("./login.jsp").forward(request, response);
            }
        }else {
            alertMsg = "tài khoản hoặc mật khẩu không đúng";
            request.setAttribute("error", alertMsg);
            request.setAttribute("username", username);
            request.getRequestDispatcher("./login.jsp").forward(request, response);
        }
    }

    private void saveRememberMe(HttpServletResponse response, String username) {
        Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, username);
        cookie.setMaxAge(30 * 60);
        response.addCookie(cookie);
    }

    public void getWaiting(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // kiểm tra session
        HttpSession session = request.getSession();
        if(session != null && session.getAttribute("account") != null) {
            User u = (User) session.getAttribute("account");
            request.setAttribute("username", u.getUserName());
            if(u.getRoleId() == 1) {
                response.sendRedirect(request.getContextPath() + "/admin/admin.jsp");
            }else {
                response.sendRedirect(request.getContextPath() + "/home");
            }
        }
    }

    public void postVerifyCode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()){
            // truy cập session
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("account");

            String code = request.getParameter("authcode");

            if(code.equals(user.getCode())) {
                user.setEmail(user.getEmail());
                user.setStatus(1);

                userService.updateStatus(user);

                out.println("Kích hoạt tài khoản thành công!");
            }else {
                out.println("Sai mã kích hoạt, vui lòng kiểm tra lại");
            }
        }
    }
    public void getLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);    // tránh tạo session mới nếu không tồn tại
        if (session != null) {
            session.removeAttribute("account");  // remove session attribute
        }
        Cookie[] cookies = request.getCookies();
        if(cookies != null) {
            for(Cookie cookie : cookies) {
                if(Constant.COOKIE_REMEMBER.equals(cookie.getName())) {
                    cookie.setMaxAge(0);    // remove cookie
                    response.addCookie(cookie);     // update cookie
                    break;
                }
            }
        }
        response.sendRedirect("./home");
    }
}