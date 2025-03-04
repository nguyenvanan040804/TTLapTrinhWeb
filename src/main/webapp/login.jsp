<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="./assets/css/login.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <section class="container forms">
        <div class="go-back">
            <i class="bx bx-left-arrow-alt"></i>
            <a href="./home">Trở lại</a>
        </div>
        <div class="form login">
            <div class="form-content">
                <a href="./home" class="logo">
                    <img src="./assets/img/logo.png" alt="">
                </a>

                <header>Đăng nhập</header>
                <c:if test="${not empty message}">
                    <div class="text-center text-success">${message}</div>
                </c:if>
                <c:if test="${not empty error}">
                    <div class="text-center text-danger">${error}</div>
                </c:if>
                <form action="login" method="post">
                    <div class="field input-field">
                        <input type="text" class="input" placeholder="tên đăng nhập" name="username" value="${username != null ? username : ''}">
                    </div>
                    <div class="field input-field">
                        <input type="password" class="password" placeholder="mật khẩu" name="password">
                        <i class="bx bx-hide eye-icon"></i>
                    </div>
                    <div class="check-form" style="font-size: 0.8em; display: flex; margin: 10px; gap: 10px">
                        <input type="checkbox" class="input" name="remember">
                        Ghi nhớ tên đăng nhập
                    </div>
                    <div class="form-link">
                        <a href="forgotPass.jsp" class="forgot-pass">Quên mật khẩu?</a>
                    </div>
                    <div class="field input-field">
                        <button>Đăng nhập</button>
                    </div>
                </form>

                <div class="form-link">
                    <span>Bạn chưa có tài khoản <a href="./register.jsp">Đăng ký</a></span>
                </div>
            </div>
        </div>

        <!-- Đăng ký form -->

<%--        <div class="form signup">--%>
<%--            <div class="form-content">--%>
<%--                <a href="home.jsp" class="logo">--%>
<%--                    <img src="./assets/img/logo.png" alt="">--%>
<%--                </a>--%>
<%--                <header>Đăng ký</header>--%>
<%--                <form action="register" method="post">--%>
<%--                    <div class="field input-field">--%>
<%--                        <input type="text" class="input" placeholder="tên đăng nhập" name="username">--%>
<%--                    </div>--%>
<%--                    <div class="field input-field">--%>
<%--                        <input type="password" class="password" placeholder="mật khẩu" name="password">--%>
<%--                        <i class="bx bx-hide eye-icon"></i>--%>
<%--                    </div>--%>
<%--                    <div class="field input-field">--%>
<%--                        <input type="text" class="input" placeholder="tên đầy đủ" name="fullname">--%>
<%--                    </div>--%>
<%--                    <div class="field input-field">--%>
<%--                        <input type="email" class="input" placeholder="email" name="email">--%>
<%--                    </div>--%>
<%--                    <div class="field input-field">--%>
<%--                        <input type="text" class="input" placeholder="số điện thoại" name="phone">--%>
<%--                    </div>--%>
<%--                    <div class="field input-field">--%>
<%--                        <input type="text" class="input" placeholder="địa chỉ" name="address">--%>
<%--                    </div>--%>
<%--                    <div class="check-form" style="font-size: 0.8em; display: flex; margin: 10px; gap: 10px">--%>
<%--                        <input type="checkbox" class="input" name="check">--%>
<%--                        Đồng ý với điều khoản sử dụng và chính sách--%>
<%--                    </div>--%>
<%--                    <div class="field button-field">--%>
<%--                        <button>Đăng ký</button>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--                <div class="form-link">--%>
<%--                    <span>Bạn đã có tài khoản rồi? <a href="#" class="link login-link">Đăng nhập</a></span>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--        </div>--%>
        <!-- forgot password -->
<%--        <div class="form forgot-password">--%>
<%--            <div class="form-content">--%>
<%--                <a href="home.jsp" class="logo">--%>
<%--                    <img src="./assets/img/logo.png" alt="">--%>
<%--                </a>--%>
<%--                <header>Quên mật khẩu</header>--%>
<%--                <form action="#">--%>
<%--                    <div class="field input-field">--%>
<%--                        <input type="email" class="input" placeholder="Nhập email của bạn" required>--%>
<%--                    </div>--%>
<%--                    <div class="field button-field">--%>
<%--                        <button>Gửi mật khẩu</button>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--                <div class="form-link">--%>
<%--                    <span>Trở lại <a href="#" class="link login-link">Đăng nhập</a></span>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        
    </section>

    <script src="./assets/js/login.js"></script>
</body>
</html>