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
                    <div class="field input-field2">
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid

&redirect_uri=http://storevv.io.vn:8080/Project_LT_Web-1.0-SNAPSHOT/google-login

&response_type=code

&client_id=517977444211-kd8h2t9ickvp5psj6klgg4n42fip47rv.apps.googleusercontent.com

&approval_prompt=force" class="btn btn-lg btn-danger">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                            </svg>
                            <span class="ms-2 fs-6">Sign in with Google</span>
                        </a>
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