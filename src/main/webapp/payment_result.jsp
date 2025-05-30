<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <title>Kết quả thanh toán</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      margin-top: 100px;
    }
    .message {
      font-size: 28px;
      color: green;
      margin-bottom: 40px;
    }
    .btn-home {
      font-size: 18px;
      padding: 12px 25px;
      background-color: #4CAF50;
      border: none;
      border-radius: 6px;
      color: white;
      cursor: pointer;
      text-decoration: none;
    }
    .btn-home:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<div class="message">${message}</div>
<a href="home" class="btn-home">Trở về trang chủ</a>
</body>
</html>
