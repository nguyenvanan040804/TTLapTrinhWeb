<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <title>Thông báo thanh toán</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
        }
        .message {
            font-size: 24px;
            margin-bottom: 30px;
            color: green;
        }
        .btn-home {
            background-color: #4CAF50;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
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
<a href="index.jsp" class="btn-home">Trở về trang chủ</a>
</body>
</html>
