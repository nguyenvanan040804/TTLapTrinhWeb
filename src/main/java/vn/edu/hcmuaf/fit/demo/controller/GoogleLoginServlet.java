package vn.edu.hcmuaf.fit.demo.controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.demo.dao.impl.UserDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.GoogleUser;
import vn.edu.hcmuaf.fit.demo.model.User;


import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(urlPatterns = {"/google-login"})
public class GoogleLoginServlet extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(GoogleLoginServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String code = request.getParameter("code");


        if (code == null) {
            response.sendRedirect("login"); // Chuyển hướng nếu không có mã code
            return;
        }

            // Lấy accessToken và thông tin người dùng từ Google
            String accessToken = GoogleLogin.getToken(code);
            GoogleUser acc = GoogleLogin.getUserInfo(accessToken);

            // Kết nối database
                Connection conn = DBConnect.getConnect();
                UserDaoImpl UserDao = new UserDaoImpl(conn);

                System.out.println("Thông tin người dùng lấy từ Google:");
                if (acc == null) {
                    System.out.println("acc bị null!");
                } else {
                    System.out.println("Email: " + acc.getEmail());
                    System.out.println("Name: " + acc.getFullName());
                    System.out.println("Picture: " + acc.getPicture());
                }

                // Kiểm tra xem user có tồn tại chưa
                User user = UserDao.findOneByGooleId(acc.getId());
                if (user == null) {
                    // Nếu chưa có, tạo mới user từ Google
                    User newUser = new User();
                    newUser.setGoogleId(acc.getId());
                    newUser.setFullName(acc.getFullName());
                    newUser.setEmail(acc.getEmail());
                    newUser.setAddress(acc.getAddress());
                    newUser.setPicture(acc.getPicture());
                    newUser.setPassWord(acc.getPassWord());
                    newUser.setRoleId(2);
                    // Lưu user vào database
                    UserDao.insertUserGoogle(newUser);
                    user = UserDao.findOneByGooleId(newUser.getGoogleId());
                }

                // Lưu thông tin user vào session
                HttpSession session = request.getSession();
                session.setAttribute("account", user);
                System.out.println("Đã lưu vào session: " + user.getEmail());
        response.sendRedirect(request.getContextPath() + "/home");

            }

            // Chuyển hướng về trang chính

//        } catch (SQLException e) {
//            e.printStackTrace();
//            LOGGER.log(Level.SEVERE, "Lỗi truy vấn database", e);
//            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi hệ thống. Vui lòng thử lại sau!");
//        } catch (Exception e) {
//            e.printStackTrace();
//            LOGGER.log(Level.SEVERE, "Lỗi xử lý đăng nhập bằng Google", e);
//            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Không thể đăng nhập bằng Google!");
        }



