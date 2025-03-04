<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<section class="container forms">
    <div class="go-back">
        <i class="bx bx-left-arrow-alt"></i>
        <a href="home.jsp">Trở lại</a>
    </div>
    <!-- forgot password -->
    <div class="form forgot-password" style="opacity: 1; pointer-events: auto">
        <div class="form-content">
            <a href="home.jsp" class="logo">
                <img src="./assets/img/logo.png" alt="">
            </a>
            <header>Quên mật khẩu</header>
            <c:if test="${not empty message}">
                <div class="text-center text-success">${message}</div>
            </c:if>
            <c:if test="${not empty error}">
                <div class="text-center text-danger">${error}</div>
            </c:if>
            <form action="PasswordRecovery" method="post">
                <div class="field input-field">
                    <input type="text" class="input" name="username" placeholder="Nhập username của bạn" required value="${username != null ? username : ''}">
                </div>
                <div class="field input-field">
                    <input type="email" class="input" name="email" placeholder="Nhập email của bạn" required value="${email != null ? email : ''}">
                </div>
                <div class="field button-field">
                    <button>Gửi mật khẩu</button>
                </div>
            </form>
            <div class="form-link">
                <span>Trở lại <a href="login.jsp" class="link login-link">Đăng nhập</a></span>
            </div>
        </div>
    </div>

</section>

<script src="./assets/js/login.js"></script>
</body>
</html>
