<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang footer</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
<footer>
    <div class="newsletter">
        <div class="container">
            <div class="wrapper">
                <div class="box">
                    <div class="content">
                        <h3>Tham gia vào bản tin của chúng tôi</h3>
                        <p>Nhập thông tin qua email về cửa hàng và những <strong>ưu đãi đặc biệt</strong></p>
                    </div>
                    <form action="" class="search">
                        <span class="icon-large"><i class="ri-mail-line"></i></span>
                        <input type="email" name="" placeholder="Email của bạn" required>
                        <button type="submit">Đăng ký</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- newsletter -->

    <div class="widgets">
        <div class="container">
            <div class="wrapper">
                <div class="flexwrap">
                    <div class="row">
                        <div class="item mini-links">
                            <h4>Trợ giúp và Liên hệ</h4>
                            <ul class="flexcol">
                                <li><a href="#">Tài khoản</a></li>
                                <li><a href="#">Đơn hàng</a></li>
                                <li><a href="#">Giá vận chuyển</a></li>
                                <li><a href="#">Trả lại</a></li>
                                <li><a href="#">Trợ lý</a></li>
                                <li><a href="#">Trợ giúp</a></li>
                                <li><a href="#">Liên hệ chúng tôi</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="item mini-links">
                            <h4>Danh mục sản phẩm</h4>
                            <ul class="flexcol">
                                <li><a href="#" data-id="children">Xe đạp trẻ em</a></li>
                                <li><a href="#" data-id="sporty">Xe đạp thể thao</a></li>
                                <li><a href="#" data-id="terrain">Xe đạp địa hình</a></li>
                                <li><a href="#" data-id="tour">Xe đạp Touring</a></li>
                                <li><a href="#" data-id="racing">Xe đạp đua</a></li>
                                <li><a href="#" data-id="elec">Xe đạp điện</a></li>
                                <li><a href="#" data-id="school">Xe đạp phổ thông</a></li>
                                <li><a href="#">Giảm giá ưu đãi</a></li>
                                <li><a href="#">Phụ kiện xe</a></li>
                                <li><a href="#">Thương hiệu</a></li>
                                <li><a href="#">Bán chạy nhất</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="item mini-links">
                            <h4>Thông tin thanh toán</h4>
                            <ul class="flexcol">
                                <li><a href="#">Thẻ tín dụng</a></li>
                                <li><a href="#">Ví diện tử</a></li>
                                <li><a href="#">Mobile Banking</a></li>
                                <li><a href="#">Cổng thanh toán điện tử</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="item mini-links">
                            <h4>Về chúng tôi</h4>
                            <ul class="flexcol">
                                <li><a href="#">Thông tin doanh nghiệp</a></li>
                                <li><a href="#">Tin tức</a></li>
                                <li><a href="#">Đầu tư</a></li>
                                <li><a href="#">Nghề nghiệp</a></li>
                                <li><a href="#">Chính sách</a></li>
                                <li><a href="#">Đánh giá khách hàng</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- widgets -->

    <div class="footer-info">
        <div class="container">
            <div class="wrapper">
                <div class="flexcol">
                    <div class="logo">
                        <a href="#"><span class="circle"></span>.BikeStore</a>
                    </div>
                    <div class="socials">
                        <ul class="flexitem">
                            <li><a href="#"><i class="ri-twitter-line"></i></a></li>
                            <li><a href="#"><i class="ri-facebook-line"></i></a></li>
                            <li><a href="#"><i class="ri-instagram-line"></i></a></li>
                            <li><a href="#"><i class="ri-linkedin-line"></i></a></li>
                            <li><a href="#"><i class="ri-youtube-line"></i></a></li>
                        </ul>
                    </div>
                </div>
                <p class="mini-text">Copyright 2024 © Xe Đạp Giá Rẻ All rights reserved. Web Design by Đỗ Khắc Hảo</p>
            </div>
        </div>
    </div>
    <!-- footer info -->

</footer>
<!-- footer -->

<div class="menu-bottom desktop-hide">
    <div class="container">
        <div class="wrapper">
            <nav>
                <ul class="flexitem">
                    <li>
                        <a href="#">
                            <i class="ri-bar-chart-line"></i>
                            <span>Thịnh hành</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="ri-user-6-line"></i>
                            <span>Tài khoản</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="ri-heart-line"></i>
                            <span>Yêu thích</span>
                        </a>
                    </li>
                    <li>
                        <a href="#0" class="t-search">
                            <i class="ri-search-line"></i>
                            <span>Tìm kiếm</span>
                        </a>
                    </li>
                    <li>
                        <a href="#0">
                            <i class="ri-shopping-cart-line"></i>
                            <span>Giỏ hàng</span>
                            <div class="fly-item">
                                <span class="item-number">0</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<!-- menu bottom -->

<div class="search-bottom desktop-hide">
    <div class="container">
        <div class="wrapper">
            <form action="" class="search">
                <a href="#" class="t-close search-close flexcenter"><i class="ri-close-line"></i></a>
                <span class="icon-large"><i class="ri-search-line"></i></span>
                <input type="search" name="" placeholder="Tìm kiếm sản phẩm" required>
                <button type="submit">Tìm kiếm</button>
            </form>
        </div>
    </div>
</div>
<!-- search bottom -->

<div class="backtotop">
    <a href="#" class="flexcol">
        <i class="ri-arrow-up-line"></i>
        <span>Đầu</span>
    </a>
</div>
<!-- nút quay về đầu trang -->

<div class="overlay"></div>
</body>
</html>
