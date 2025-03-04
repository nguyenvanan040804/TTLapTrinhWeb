<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
    <div id="page" class="site page-home">

        <jsp:include page="templates/header.jsp" flush="true" />

        <main>
            <div class="slider">
                <div class="container">
                    <div class="wrapper">
                        <div class="myslider swiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="image object-cover">
                                            <img src="./assets/slider/slider1.png" alt="">
                                        </div>
                                        <div class="text-content flexcol">
                                            <a href="#" data-id="sporty" class="primary-button">Đặt Hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="image object-cover">
                                            <img src="./assets/slider/slider2.jpg" alt="">
                                        </div>
                                        <div class="text-content flexcol">
                                            <a href="#" data-id="school" class="primary-button">Đặt Hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="image object-cover">
                                            <img src="./assets/slider/slider3.png" alt="">
                                        </div>
                                        <div class="text-content flexcol">
                                            <a href="#" data-id="tour" class="primary-button">Đặt Hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="item">
                                        <div class="image object-cover">
                                            <img src="./assets/slider/slider4.jpg" alt="">
                                        </div>
                                        <div class="text-content flexcol">
                                            <a href="pageAccessory.jsp" class="primary-button">Đặt Hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- slider -->

            <div class="brands">
                <div class="container">
                    <div class="wrapper flexitem">
                        <div class="item">
                            <a href="#">
                                <img src="./assets/brands/giant.png" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="./assets/brands/momentim.png" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="./assets/brands/royalbaby.png" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="./assets/brands/Jeep_T7.png" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="./assets/brands/liv.png" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="./assets/brands/maxbike.png" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- brands -->

            <div class="trending">
                <div class="container">
                    <div class="wrapper">
                        <div class="sectop flexitem">
                            <h2><span class="circle"></span><span>Bán chạy</span></h2>
                        </div>
                        <div class="column">
                            <div class="flexwrap">
                                <div class="row products big">
                                    <div class="item">
                                        <div class="offer">
                                            <p>Hạn Khuyến Mãi</p>
                                            <ul class="flexcenter">
                                                <li>1</li>
                                                <li>15</li>
                                                <li>27</li>
                                                <li>60</li>
                                            </ul>
                                        </div>
                                        <div class="media">
                                            <div class="image">
                                                <a href="../../../page-offer.jsp">
                                                    <img src="assets/img/Xe-Dap-Dua-Sava-Ex7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="discount circle flexcenter"><span>3%</span></div>
                                        </div>
                                        <div class="content">
                                            <div class="rating">
                                                <div class="stars"></div>
                                                <span class="mini-text">(2,548)</span>
                                            </div>
                                            <h3 class="main-links"><a href="../../../page-offer.jsp">Xe Đạp Đua Sava Ex7</a></h3>
                                            <div class="price">
                                                <span class="current">19.490.000đ</span>
                                                <span class="normal mini-text">20.000.000đ</span>
                                            </div>
                                            <div class="stock mini-text">
                                                <div class="qty">
                                                    <span>Số lượng còn: <strong class="qty-available">107</strong></span>
                                                    <span>Đã bán: <strong class="qty-sold">3,459</strong></span>
                                                </div>
                                                <div class="bar">
                                                    <div class="available"></div>
                                                    <div class="filled"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row products mini">
                                    <div class="item">
                                        <div class="media">
                                            <div class="thumbnail object-cover">
                                                <a href="#">
                                                    <img src="./assets/img/Xe-Dap-Touring-Life.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="discount circle flexcenter"><span>32%</span></div>
                                        </div>
                                        <div class="content">
                                            <h3 class="main-links"><a href="#">Xe Đạp Touring Life</a></h3>
                                            <div class="rating">
                                                <div class="stars"></div>
                                                <span class="mini-text">(2,548)</span>
                                            </div>
                                            <div class="price">
                                                <span class="current">4.289.990đ</span>
                                                <span class="normal mini-text">5.998.990đ</span>
                                            </div>
                                            <div class="mini-text">
                                                <p>2975 đã bán</p>
                                                <p>Miễn phí vận chuyển</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="media">
                                            <div class="thumbnail object-cover">
                                                <a href="#">
                                                    <img src="./assets/img/Xe-Dap-Dua-Fascino-Triton.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="discount circle flexcenter"><span>20%</span></div>
                                        </div>
                                        <div class="content">
                                            <h3 class="main-links"><a href="#">Xe Đạp Đua Fascino Triton</a></h3>
                                            <div class="rating">
                                                <div class="stars"></div>
                                                <span class="mini-text">(1,411)</span>
                                            </div>
                                            <div class="price">
                                                <span class="current">3.222.990đ</span>
                                                <span class="normal mini-text">4.777.990đ</span>
                                            </div>
                                            <div class="mini-text">
                                                <p>1843 đã bán</p>
                                                <p>Miễn phí vận chuyển</p>
                                                <p class="stock-danger">Còn: 7 chiếc!</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="media">
                                            <div class="thumbnail object-cover">
                                                <a href="#">
                                                    <img src="assets/img/Xe-Dap-Fixed-Gear-Funky-Locking-Nhat-Ban.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="discount circle flexcenter"><span>25%</span></div>
                                        </div>
                                        <div class="content">
                                            <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Funky Locking Nhật Bản</a></h3>
                                            <div class="rating">
                                                <div class="stars"></div>
                                                <span class="mini-text">(1,032)</span>
                                            </div>
                                            <div class="price">
                                                <span class="current">7.199.990đ</span>
                                                <span class="normal mini-text">9.998.990đ</span>
                                            </div>
                                            <div class="mini-text">
                                                <p>1032 đã bán</p>
                                                <p>Miễn phí vận chuyển</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="media">
                                            <div class="thumbnail object-cover">
                                                <a href="#">
                                                    <img src="assets/img/Xe-Dap-Gap-Califa-CG20-3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="discount circle flexcenter"><span>15%</span></div>
                                        </div>
                                        <div class="content">
                                            <h3 class="main-links"><a href="#">Xe Đạp Gap Califa CG20 3</a></h3>
                                            <div class="rating">
                                                <div class="stars"></div>
                                                <span class="mini-text">(899)</span>
                                            </div>
                                            <div class="price">
                                                <span class="current">1.289.990đ</span>
                                                <span class="normal mini-text">2.998.990đ</span>
                                            </div>
                                            <div class="mini-text">
                                                <p>899 đã bán</p>
                                                <p>Miễn phí vận chuyển</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row products mini">
                                    <div class="item">
                                        <div class="media">
                                            <div class="thumbnail object-cover">
                                                <a href="#">
                                                    <img src="assets/img/Xe-Dap-Banh-Beo-Califa-FAT.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="discount circle flexcenter"><span>32%</span></div>
                                        </div>
                                        <div class="content">
                                            <h3 class="main-links"><a href="#">Xe Đạp Bánh Béo Califa FAT</a></h3>
                                            <div class="rating">
                                                <div class="stars"></div>
                                                <span class="mini-text">(2,548)</span>
                                            </div>
                                            <div class="price">
                                                <span class="current">5.889.990đ</span>
                                                <span class="normal mini-text">6.999.900đ</span>
                                            </div>
                                            <div class="mini-text">
                                                <p>2975 đã bán</p>
                                                <p>Miễn phí vận chuyển</p>
                                                <p class="stock-danger">Còn: 7 chiếc!</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="media">
                                            <div class="thumbnail object-cover">
                                                <a href="#">
                                                    <img src="assets/img/Xe-Dap-Dia-Hinh-MTB-Giant-Talon-3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="discount circle flexcenter"><span>22%</span></div>
                                        </div>
                                        <div class="content">
                                            <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Giant Talon 3</a></h3>
                                            <div class="rating">
                                                <div class="stars"></div>
                                                <span class="mini-text">(1,320)</span>
                                            </div>
                                            <div class="price">
                                                <span class="current">5.889.990đ</span>
                                                <span class="normal mini-text">7.229.900đ</span>
                                            </div>
                                            <div class="mini-text">
                                                <p>1402 đã bán</p>
                                                <p>Miễn phí vận chuyển</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="media">
                                            <div class="thumbnail object-cover">
                                                <a href="#">
                                                    <img src="assets/img/Xe-Dap-Dia-Hinh-Life-Lion-Pro.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="discount circle flexcenter"><span>15%</span></div>
                                        </div>
                                        <div class="content">
                                            <h3 class="main-links"><a href="#">Xe Đạp Địa Hình Life Lion Pro</a></h3>
                                            <div class="rating">
                                                <div class="stars"></div>
                                                <span class="mini-text">(1,548)</span>
                                            </div>
                                            <div class="price">
                                                <span class="current">3.889.990đ</span>
                                                <span class="normal mini-text">4.199.900đ</span>
                                            </div>
                                            <div class="mini-text">
                                                <p>1780 đã bán</p>
                                                <p>Miễn phí vận chuyển</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="media">
                                            <div class="thumbnail object-cover">
                                                <a href="#">
                                                    <img src="assets/img/Xe-Dap-Dia-Hinh-Life-MX7000-2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="discount circle flexcenter"><span>25%</span></div>
                                        </div>
                                        <div class="content">
                                            <h3 class="main-links"><a href="#">Xe Đạp Địa Hình Life MX7000 2</a></h3>
                                            <div class="rating">
                                                <div class="stars"></div>
                                                <span class="mini-text">(1,228)</span>
                                            </div>
                                            <div class="price">
                                                <span class="current">3.889.990đ</span>
                                                <span class="normal mini-text">4.010.900đ</span>
                                            </div>
                                            <div class="mini-text">
                                                <p>2111 đã bán</p>
                                                <p>Miễn phí vận chuyển</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- bán chạy product-->

            <div class="banners">
                <div class="container">
                    <div class="wrapper">
                        <div class="column">
                            <div class="sectop flexitem">
                                <h2><span class="circle"></span><span>khuyến mãi hot</span></h2>
                                <div class="second-links">
                                    <a href="#" class="view-all">Xem tất cả
                                        <i class="ri-arrow-right-line"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="banner-categories flexwrap">
                                <div class="row">
                                    <div class="item">
                                        <a href="#"><img src="assets/img/discount-1.jpg" alt=""></a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="item">
                                        <a href="#"><img src="assets/img/discount-2.jpg" alt=""></a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="item">
                                        <a href="#"><img src="assets/img/discount-3.jpg" alt=""></a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="item">
                                        <a href="#"><img src="assets/img/discount-4.jpg" alt=""></a>
                                    </div>
                                </div>
                            </div>
                            <!-- shop address -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- banner khuyến mãi -->

            <div class="features">
                <div class="container">
                    <div class="wrapper">
<%--                        <div class="column">--%>
<%--                            <div class="sectop flexitem">--%>
<%--                                <h2><span class="circle"></span><span>Danh mục</span></h2>--%>
<%--                                <div class="second-links">--%>
<%--                                    <a href="#" class="view-all">Xem tất cả--%>
<%--                                        <i class="ri-arrow-right-line"></i>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="products sub flexwrap">--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#" data-id="children">--%>
<%--                                                <img src="assets/img/category-treem.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <h3 class="sub-links"><a href="#" data-id="children">Xe Đạp Trẻ Em</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#" data-id="sporty">--%>
<%--                                                <img src="assets/img/category-thethao.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <h3 class="sub-links"><a href="#" data-id="sporty">Xe Đạp Thể Thao</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#" data-id="terrain">--%>
<%--                                                <img src="assets/img/category-diahinh.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <h3 class="sub-links"><a href="#" data-id="terrain">Xe Đạp Địa Hình</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#" data-id="racing">--%>
<%--                                                <img src="assets/img/category-dua.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <h3 class="sub-links"><a href="#" data-id="racing">Xe Đạp Đua</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#" data-id="tour">--%>
<%--                                                <img src="assets/img/category-touring.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <h3 class="sub-links"><a href="#" data-id="tour">Xe Đạp Touring</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#" data-id="elec">--%>
<%--                                                <img src="assets/img/category-xedien.png" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <h3 class="sub-links"><a href="#" data-id="elec">Xe Đạp Điện</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#" data-id="school">--%>
<%--                                                <img src="assets/img/category-phothong.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <h3 class="sub-links"><a href="#" data-id="school">Xe Đạp Đi Học</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="../../../page-accessory.html">--%>
<%--                                                <img src="assets/img/category-phukien-1.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <h3 class="sub-links"><a href="../../../page-accessory.html">Phụ Kiện Xe Đạp</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    </div>
                </div>
            </div>
            <!--danh mục sản phẩm-->
        
<%--            <div class="features">--%>
<%--                <div class="container">--%>
<%--                    <div class="wrapper">--%>
<%--                        <div class="column">--%>
<%--                            <div class="sectop flexitem">--%>
<%--                                <h2><span class="circle"></span><span>Nổi bật</span></h2>--%>
<%--                                <div class="second-links">--%>
<%--                                    <a href="#" class="view-all">Xem tất cả--%>
<%--                                        <i class="ri-arrow-right-line"></i>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="products main flexwrap">--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="../../../page-single.html">--%>
<%--                                                <img src="assets/img/Xe-Dap-Fixed-Gear-Life-Horse-Fx2.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>16%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,955)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Life Horse Fx2 – Khung Nhôm | Phanh Vành</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">5.500.000đ</span>--%>
<%--                                            <span class="normal mini-text">6.555.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Là lựa chọn cho những ai đam mê và muốn thử sức với dòng xe đạp fixed gear</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/Xe-Dap-Fixed-Gear-Life-Fix735-700C.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>7%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(655)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Life Fix735 700C Giá Rẻ | Khuyến mãi Hot</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">3.740.000đ</span>--%>
<%--                                            <span class="normal mini-text">4.000.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Là lựa chọn cho những ai đam mê và muốn thử sức với dòng xe đạp fixed gear</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/Xe-Dap-Fixed-Gear-Funky-Locking-Nhat-Ban.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>5%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(835)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Funky Locking Nhật Bản</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">7.590.000đ</span>--%>
<%--                                            <span class="normal mini-text">7.990.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Sản xuất tại Đài Loan</li>--%>
<%--                                                <li>Bảo hành 12 tháng</li>--%>
<%--                                                <li>Có nhiều màu sắc khác nhau</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/xe-dap-fix-gear-khong-thang-brave-will.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>2%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,955)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Không Thắng Brave Will</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">4.590.000đ</span>--%>
<%--                                            <span class="normal mini-text">4.690.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Sản xuất tại Đài Loan</li>--%>
<%--                                                <li>Bảo hành 12 tháng</li>--%>
<%--                                                <li>Phù hợp cho người thích cảm giác mạnh</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/feature-product-5.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>10%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(733)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Kurashi Kon 26 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">3.790.000đ</span>--%>
<%--                                            <span class="normal mini-text">4.190.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế đơn giản, trọng lượng nhẹ và có thể đi lùi</li>--%>
<%--                                                <li>Ghi đông Xe Đạp Fixed Funky Popping thiết kế kiểu dáng cong</li>--%>
<%--                                                <li>Bộ truyền động Xe Đạp Fixed Gear Funky Popping được cấu tạo đơn giản</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/feature-products-7.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>22%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(723)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Touring Life Fly – Khung Nhôm | Phanh Đĩa | Ltwoo R7</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">8.090.000đ</span>--%>
<%--                                            <span class="normal mini-text">10.350.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Là lựa chọn cho những ai đam mê và muốn thử sức với dòng xe đạp fixed gear</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/xe-dap-dia-hinh-giant-atx-720-2021.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>2%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(841)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình Giant ATX 720-2021 Giá Rẻ</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">10.750.0000đ</span>--%>
<%--                                            <span class="normal mini-text">10.990.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Xe chính hãng, nhập khẩu Đài Loan</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/Xe-Dap-Touring-Twitter-R12-Tay-Ngang.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>13%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(935)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Touring Twtter R12 Tay Ngang Giá Rẻ Khuyến Mãi Hot</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">15.900.000đ</span>--%>
<%--                                            <span class="normal mini-text">18.290.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế thời thượng và công nghệ tiên tiến</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m65 trở lên</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 90kg</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- nổi bật product-->

<%--            <div class="features">--%>
<%--                <div class="container">--%>
<%--                    <div class="wrapper">--%>
<%--                        <div class="column">--%>
<%--                            <div class="sectop flexitem">--%>
<%--                                <h2><span class="circle"></span><span>Bộ sưu tập ra mắt 2025</span></h2>--%>
<%--                                <div class="second-links">--%>
<%--                                    <a href="#" class="view-all">Xem tất cả--%>
<%--                                        <i class="ri-arrow-right-line"></i>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="products main flexwrap">--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/bst2024.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>26%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,255)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Trẻ Em Youth Max Bike Bella 5</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">1.999.000đ</span>--%>
<%--                                            <span class="normal mini-text">2.199.990đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Miễn phí ship giao hàng khi mua xe đạp, không áp dụng với các sản phẩm đang có khuyến mãi từ 50%</li>--%>
<%--                                                <li>Giảm 10% đối với đơn hàng phụ kiện từ 3 món</li>--%>
<%--                                                <li>Giảm 15% đối với đơn hàng phụ kiện từ 5 món</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/bst2024_2.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>35%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,955)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Đường Phố Touring JEEP Freedom LX-66 Disc, Phanh Đĩa – Bánh 700C</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">5.600.000đ</span>--%>
<%--                                            <span class="normal mini-text">6.600.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Miễn phí ship giao hàng khi mua xe đạp, không áp dụng với các sản phẩm đang có khuyến mãi từ 50%</li>--%>
<%--                                                <li>Giảm 10% đối với đơn hàng phụ kiện từ 3 món</li>--%>
<%--                                                <li>Giảm 15% đối với đơn hàng phụ kiện từ 5 món</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/bst2024-3.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>15%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,072)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Trẻ Em Youth MISAKI Berry 2 – Bánh 14 Inches</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">2.490.000đ</span>--%>
<%--                                            <span class="normal mini-text">2.799.990đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Sản xuất tại Trung Quốc</li>--%>
<%--                                                <li>Bảo hành 12 tháng</li>--%>
<%--                                                <li>Giảm 10% đối với đơn hàng phụ kiện từ 3 món</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/bts2024-4.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>30%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,217)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Đường Phố Fixed Gear VINBIKE Megatron – Bánh 700C</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">6.290.000đ</span>--%>
<%--                                            <span class="normal mini-text">6.990.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Bánh xe 700C cùng với hệ thống fixed gear tạo ra trải nghiệm đạp xe mạnh mẽ và thú vị</li>--%>
<%--                                                <li>Bảo hành 12 tháng</li>--%>
<%--                                                <li>Người bạn đồng hành tin cậy trên mọi cuộc hành trình</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/bst2024-5.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>25%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,015)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Trẻ Em Youth TRINX Princess – Bánh 18 Inches</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">1.590.000đ</span>--%>
<%--                                            <span class="normal mini-text">1.990.000</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế đơn giản, trọng lượng nhẹ và có thể đi lùi</li>--%>
<%--                                                <li>Thiết kế và sản xuất tại Việt Nam</li>--%>
<%--                                                <li>Giảm 10% đối với đơn hàng phụ kiện từ 3 món</li>--%>
<%--                                                <li>Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/bst2024-6.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>15%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,955)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Giant Roam 4 Disc 2024</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">11.290.000đ</span>--%>
<%--                                            <span class="normal mini-text">13.590.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Xe đạp MTB Giant Roam 4 Disc 2024 có kiểu dáng khỏe khoắn, phối màu tươi trẻ, thu hút mọi ánh nhìn</li>--%>
<%--                                                <li>Trang bị lốp Giant CrossCut 700x42c chống đâm thủng, vành xe nhôm đôi và căm thép không gỉ</li>--%>
<%--                                                <li>Hệ thống Shimano 2×7 với chuyển đĩa và chuyển líp Tourney, giúp xe di chuyển mượt mà trên nhiều địa hình</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/bst2024-7.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>25%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,225)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Đua Giant Propel ADV Pro 0 2024</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">121.990.000đ</span>--%>
<%--                                            <span class="normal mini-text">169.990.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Hàng cao cấp</li>--%>
<%--                                                <li>Giảm giá lên đến 20%</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/bst2024-8.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>25%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,955)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Touring Twtter R12 Tay Ngang</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">1.599.000đ</span>--%>
<%--                                            <span class="normal mini-text">1.799.990đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế thời thượng và công nghệ tiên tiến</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m65 trở lên</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 90kg</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- 2025 product-->

<%--            <div class="banners">--%>
<%--                <div class="container">--%>
<%--                    <div class="wrapper">--%>
<%--                        <div class="column">--%>
<%--                            <div class="sectop flexitem">--%>
<%--                                <h2><span class="circle"></span><span>ưu đãi mới</span></h2>--%>
<%--                                <div class="second-links">--%>
<%--                                    <a href="#" class="view-all">Xem tất cả--%>
<%--                                        <i class="ri-arrow-right-line"></i>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="top-dis-categories flexwrap">--%>
<%--                                <div class="row">--%>
<%--                                    <div class="item">--%>
<%--                                        <a href="#"><img src="assets/img/uu-dai-duoi-2-trieu-gia-re.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="row">--%>
<%--                                    <div class="item">--%>
<%--                                        <a href="#"><img src="assets/img/uu-dai-duoi-5-trieu.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="row">--%>
<%--                                    <div class="item">--%>
<%--                                        <a href="#"><img src="assets/img/uu-dai-khuyen-mai.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <!-- shop address -->--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- banner ưu đãi -->

            <div class="features">
                <div class="container">
                    <div class="wrapper">
                        <div class="column">
                            <div class="sectop flexitem">
                                <h2><span class="circle"></span><span>Xe Đạp Trẻ Em</span></h2>
                                <div class="second-links">
                                    <a href="#" data-id="children" class="view-all">Xem tất cả
                                        <i class="ri-arrow-right-line"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="products main flexwrap">
                                <c:forEach var="product" items="${products}">
                                    <c:if test="${product.cateId == 1}">
                                        <div class="item">
                                        <div class="media">
                                            <div class="thumbnail object-cover">
                                                <a href="#" data-id="${product.id}">
                                                    <img src="${product.thumb}" alt="${product.proName}">
                                                </a>
                                            </div>
                                            <div class="hoverable">
                                                <ul>
                                                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="content">
                                            <div class="rating">
                                                <div class="mini-text">(4.5)</div>
                                                <div class="stars" style="width: 17px;"></div>
                                                <span class="mini-text" style="margin-left: auto;">Số lượng: ${product.quantity}</span>
                                            </div>
                                            <h3 class="main-links"><a href="#">${product.proName}</a></h3>
                                            <div class="price pro-price">
                                                <span class="current"><f:formatNumber value="${product.price}"/>đ</span>
                                                <a href="detail?pid=${product.id}" class="btn btn-detail">Xem chi tiết</a>
                                            </div>
                                            <div class="footer">
                                                <ul class="mini-text">
                                                    <li>${product.description}</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    </c:if>
                                </c:forEach>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/kid-2.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>13%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(825)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Trẻ Em Xaming Nữ 2 Gióng 14 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">4.599.000đ</span>--%>
<%--                                            <span class="normal mini-text">4.899.990đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế nữ tính và màu sắc tươi sáng, thu hút các bé gái</li>--%>
<%--                                                <li>Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối</li>--%>
<%--                                                <li>Phù hợp với các bé từ 1m30</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/kid3.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>23%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,601)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Trẻ Em Bé Trai Hector Polo 12 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">1.450.000đ</span>--%>
<%--                                            <span class="normal mini-text">1.890.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế năng động, sử dụng các hình ảnh đáng yêu phù hợp các bé gái</li>--%>
<%--                                                <li>Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối</li>--%>
<%--                                                <li>Phù hợp với các bé từ 90cm</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/kid-4.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>18%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,011)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Trẻ Em Bé Gái Shukyo S1 12 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">990.000đ</span>--%>
<%--                                            <span class="normal mini-text">1.200.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế thoải mái, nữ tính phù hợp dành cho các bé gái</li>--%>
<%--                                                <li>Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối</li>--%>
<%--                                                <li>Phù hợp với các bé từ 80cm</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/kid-5.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>17%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,711)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Trẻ Em Bé Trai Shukyo K2 14 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">1.050.000đ</span>--%>
<%--                                            <span class="normal mini-text">1.260.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế năng động, màu sắc nổi bật phù hợp cho các bé trai</li>--%>
<%--                                                <li>Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối</li>--%>
<%--                                                <li>Phù hợp với các bé từ 80cm</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/kid-6.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>25%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,355)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Cho Bé Gái JsXiong 2305 12 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">1.550.000đ</span>--%>
<%--                                            <span class="normal mini-text">1.680.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Xe Đạp Cho Bé Gái JsXiong 2305 12 Inch được thiết kế xinh xắn, phù hợp cho bé gái 3 tuổi.</li>--%>
<%--                                                <li>Ghi đông thép nhẹ và tay cầm cao su mềm giúp bé điều khiển dễ dàng</li>--%>
<%--                                                <li>Khung xe làm từ hợp kim thép bền chắc.</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/kid-7.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>26%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,001)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Trẻ Em Bé Gái Melody 14 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">1.390.000đ</span>--%>
<%--                                            <span class="normal mini-text">1.890.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế ấn tượng, phù hợp sở thích các bé gái</li>--%>
<%--                                                <li>Khung sườn chắc chắn, thẩm mỹ, an toàn</li>--%>
<%--                                                <li>Ghi đông cứng cáp, dễ điều khiển, giúp bé thích đạp xe hơn</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/kid-8.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>6%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(744)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Trẻ Em Bé Gái Xaming Mini 20 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">1.850.000đ</span>--%>
<%--                                            <span class="normal mini-text">1.950.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế nữ tính phù hợp với các bé gáin</li>--%>
<%--                                                <li>Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối</li>--%>
<%--                                                <li>Chịu tải trọng đến 90kg</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- trẻ em product-->
        
            <div class="banners">
                <div class="container">
                    <div class="wrapper">
                        <div class="column">
                            <div class="banner flexwrap">
                                <div class="row">
                                    <a href="#" class="item">
                                        <div class="image">
                                            <img src="assets/img/baner-0.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div class="row">
                                    <a href="#" class="item">
                                        <div class="image">
                                            <img src="assets/img/banner02.webp" alt="">
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <!-- banners -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- banner xe thể thao -->

            <div class="features">
                <div class="container">
                    <div class="wrapper">
                        <div class="column">
                            <div class="sectop flexitem">
                                <h2><span class="circle"></span><span>Xe Đạp Thể Thao</span></h2>
                                <div class="second-links">
                                    <a class="view-all">Xem tất cả
                                        <i class="ri-arrow-right-line"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="products main flexwrap">
                                <c:forEach var="product" items="${products}">
                                    <c:if test="${product.cateId == 2}">
                                        <div class="item">
                                            <div class="media">
                                                <div class="thumbnail object-cover">
                                                    <a href="#" data-id="${product.id}">
                                                        <img src="${product.thumb}" alt="${product.proName}">
                                                    </a>
                                                </div>
                                                <div class="hoverable">
                                                    <ul>
                                                        <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                        <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="rating">
                                                    <div class="mini-text">(4.5)</div>
                                                    <div class="stars" style="width: 17px;"></div>
                                                    <span class="mini-text" style="margin-left: auto;">Số lượng: ${product.quantity}</span>
                                                </div>
                                                <h3 class="main-links"><a href="#">${product.proName}</a></h3>
                                                <div class="price pro-price">
                                                    <span class="current"><f:formatNumber value="${product.price}"/>đ</span>
                                                    <a href="detail?pid=${product.id}" class="btn btn-detail">Xem chi tiết</a>
                                                </div>
                                                <div class="footer">
                                                    <ul class="mini-text">
                                                        <li>${product.description}</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#" data-id="sporty">--%>
<%--                                                <img src="assets/img/sport-1.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>27%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(288)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Đua Papylus PR700s – Khung Nhôm | Phanh Đĩa Cơ | Shimano Giá Rẻ</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">3.890.000đ</span>--%>
<%--                                            <span class="normal mini-text">5.315.520đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế bắt mắt và hiện đại</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Xe nhập khẩu chính hãng</li>--%>
<%--                                                <li>Bảo hành 12 tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/sport-2.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>1%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(329)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình Trợ Lực Điện Life Vision 27.5 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">26.800.000đ</span>--%>
<%--                                            <span class="normal mini-text">27.000.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế phong cách thể thao, mạnh mẽ</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m6 trở lên</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/sport-3.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>9%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,011)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Đua Fascino FR700s – Phanh Đĩa Cơ Giá Rẻ | Khuyến mãi Hot</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">1.450.000đ</span>--%>
<%--                                            <span class="normal mini-text">1.890.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế phong cách thể thao, mạnh mẽ</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 120kg</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/sport-4.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>16%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(993)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Touring Life TX800 – Khung Nhôm | Phanh Dầu | Shimano Sora Giá Rẻ</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">10.490.000đ</span>--%>
<%--                                            <span class="normal mini-text">12.490.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế phong cách thể thao, mạnh mẽ</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m65 trở lên</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 90kg</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/sport-5.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>17%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,188)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Life MX2000 27.5 Inch – Khung Nhôm | Shimano | Phanh Đĩa Giá Rẻ </a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">5.800.000đ</span>--%>
<%--                                            <span class="normal mini-text">6.100.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 120kg</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/sport-6.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>27%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,078)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Touring Life Louis – Shimano Toney</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">4.290.000đ</span>--%>
<%--                                            <span class="normal mini-text">5.890.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Xe nhập khẩu ĐÀI LOAN</li>--%>
<%--                                                <li>Bảo hành 12 Tháng</li>--%>
<%--                                                <li>Khung xe làm từ hợp kim thép bền chắc.</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/sport-7.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>8%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(619)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Đua DTFLY R-2000 – Khung Nhôm | Tay Đề Lắc | Shimano Claris | Phanh Đĩa Cơ Giá Rẻ</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">10.890.000đ</span>--%>
<%--                                            <span class="normal mini-text">11.900.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế phong cách thể thao, mạnh mẽ</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 120kg</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/sport-8.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>3%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(183)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Touring Papylus Pt700s – Khung Nhôm | Shimano Giá Rẻ | Khuyến mãi Hot</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">3.890.000đ</span>--%>
<%--                                            <span class="normal mini-text">4.000.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế phong cách thể thao, mạnh mẽ</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m6 trở lên</li>--%>
<%--                                                <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- thể thao product-->

            <div class="features">
                <div class="container">
                    <div class="wrapper">
                        <div class="column">
                            <div class="sectop flexitem">
                                <h2><span class="circle"></span><span>Xe Đạp Địa Hình</span></h2>
                                <div class="second-links">
                                    <a href="#" data-id="terrain" class="view-all">Xem tất cả
                                        <i class="ri-arrow-right-line"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="products main flexwrap">
                                <c:forEach var="product" items="${products}">
                                    <c:if test="${product.cateId == 3}">
                                        <div class="item">
                                            <div class="media">
                                                <div class="thumbnail object-cover">
                                                    <a href="#" data-id="${product.id}">
                                                        <img src="${product.thumb}" alt="${product.proName}">
                                                    </a>
                                                </div>
                                                <div class="hoverable">
                                                    <ul>
                                                        <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                        <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="rating">
                                                    <div class="mini-text">(4.5)</div>
                                                    <div class="stars" style="width: 17px;"></div>
                                                    <span class="mini-text" style="margin-left: auto;">Số lượng: ${product.quantity}</span>
                                                </div>
                                                <h3 class="main-links"><a href="#">${product.proName}</a></h3>
                                                <div class="price pro-price">
                                                    <span class="current"><f:formatNumber value="${product.price}"/>đ</span>
                                                    <a href="detail?pid=${product.id}" class="btn btn-detail">Xem chi tiết</a>
                                                </div>
                                                <div class="footer">
                                                    <ul class="mini-text">
                                                        <li>${product.description}</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#" data-id="terrain">--%>
<%--                                                <img src="assets/img/terren-1.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>25%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(315)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB DTFLY B100 24 Inch – Phanh Đĩa</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">3.390.000đ</span>--%>
<%--                                            <span class="normal mini-text">4.500.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Khung hợp kim thép chắc chắn, giúp tăng cường độ bền và khả năng chịu lực.</li>--%>
<%--                                                <li>Phanh đĩa cơ đảm bảo an toàn tuyệt đối trong mọi tình huống</li>--%>
<%--                                                <li>Thiết kế hiện đại, phong cách cùng nhiều màu sắc lựa chọn</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/terren-2.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>16%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,122)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Vicky Crazy VC800 26 Inch – Khung Thép | Phanh Đĩa Giá Rẻ</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">2.530.000đ</span>--%>
<%--                                            <span class="normal mini-text">3.000.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Phù hợp với người cao từ 1m55</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 120kg</li>--%>
<%--                                                <li>Xe nhập khẩu chính hãng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/terran-3.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>11%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(701)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Giant Talon 0 2024</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">19.590.000đ</span>--%>
<%--                                            <span class="normal mini-text">21.990.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>kiểu dáng thể thao với khung “hardtail” cứng cáp</li>--%>
<%--                                                <li>Ghi đông tay ngang Giant Connect Trail giúp người lái dễ dàng điều chỉnh phương hướng</li>--%>
<%--                                                <li>Lốp Kenda Booster 27.5 x 2.4 và vành Giant GX03V 27.5 giúp xe bám đường tốt</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/terran-4.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>3%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(139)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Calli 5900 27.5 Inch – Khung Nhôm | Shimano Altus | Phanh Dầu Giá Rẻ</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">7.990.000đ</span>--%>
<%--                                            <span class="normal mini-text">8.200.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Khung xe được làm từ Hợp kim thép &, rất bền và chịu được va đập.</li>--%>
<%--                                                <li>Xe được trang bị phuộc trước và sau giúp giảm xóc, phù hợp cho địa hình gồ ghề.</li>--%>
<%--                                                <li>Lốp xe 20×1.75 kích thước lớn và gai sâu, tăng độ bám và ổn định trên mọi loại địa hình</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/terran-5.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>5%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(147)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Life MX2000 27.5 Inch – Khung Nhôm | Shimano | Phanh Đĩa Giá Rẻ</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">5.800.000đ</span>--%>
<%--                                            <span class="normal mini-text">6.100.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 120kg</li>--%>
<%--                                                <li>Xe nhập khẩu chính hãng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/terran-6.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>16%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(1,014)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Life MX1000 – Khung Nhôm | Shimano | Phanh Đĩa | Giá Rẻ</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">5.200.000đ</span>--%>
<%--                                            <span class="normal mini-text">6.200.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Phù hợp với người cao từ 1m55 trở lên</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 120kg</li>--%>
<%--                                                <li>Xe nhập khẩu chính hãng</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/terran-7.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>15%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(121)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Life MX3000 27.5 Inch – Khung Nhôm | Shimano | Phanh Đĩa Dầu Giá Rẻ </a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">7.500.000đ</span>--%>
<%--                                            <span class="normal mini-text">8.775.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Thiết kế phong cách thể thao, mạnh mẽ</li>--%>
<%--                                                <li>Phù hợp với người cao từ 1m60 trở lên</li>--%>
<%--                                                <li>Chịu tải trọng lên đến 120kg</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="item">--%>
<%--                                    <div class="media">--%>
<%--                                        <div class="thumbnail object-cover">--%>
<%--                                            <a href="#">--%>
<%--                                                <img src="assets/img/terran-8.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="hoverable">--%>
<%--                                            <ul>--%>
<%--                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="discount circle flexcenter"><span>6%</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="content">--%>
<%--                                        <div class="rating">--%>
<%--                                            <div class="stars"></div>--%>
<%--                                            <span class="mini-text">(362)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa hình MTB Satako Akita 29 Inch</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">15.990.000đ</span>--%>
<%--                                            <span class="normal mini-text">16.990.000đ</span>--%>
<%--                                        </div>--%>
<%--                                        <div class="footer">--%>
<%--                                            <ul class="mini-text">--%>
<%--                                                <li>Xe đạp địa hình 29 inch, khung sườn carbon bền nhẹ.</li>--%>
<%--                                                <li>Phuộc nhún hơi SATAKO nhôm, có khóa ghi-đông.</li>--%>
<%--                                                <li>Tay đề SHIMANO DEORE M6100 1x12s, chuyển số mượt.</li>--%>
<%--                                                <li>Phanh dầu thủy lực SHIMANO MT200, an toàn tối ưu.</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- địa hình product-->

            <div class="banners">
                <div class="container">
                    <div class="wrapper">
                        <div class="column">
                            <div class="banner-sub flexwrap">
                                <div class="row">
                                    <a href="#" class="item">
                                        <div class="image">
                                            <img src="assets/img/phukien-1.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div class="row">
                                    <a href="#" class="item">
                                        <div class="image">
                                            <img src="assets/img/phukien-2.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <!-- banners -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- banner phụ tùng -->

            <div class="features">
                <div class="container">
                    <div class="wrapper">
                        <div class="column">
                            <div class="sectop flexitem">
                                <h2><span class="circle"></span><span>Phụ Kiện</span></h2>
                                <div class="second-links">
                                    <a href="../../../page-accessory.html" class="view-all">Xem tất cả
                                        <i class="ri-arrow-right-line"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="products sub flexwrap">
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-1.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Bình nước</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-2.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Yên xe</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-3.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Chuông</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-4.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Vệ sinh-Bảo dưỡng</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-5.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Chân chống</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-6.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Bơm xe đạp</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-7.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Nón bảo hiểm</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-8.jpeg" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Túi treo xe</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-9.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="main-links"><a href="#">Đèn xe đạp</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-10.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Khóa xe</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-11.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Gương xe đạp</a></h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/pk-12.png" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h3 class="sub-links"><a href="#">Phụ kiện khác</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- phụ tùng product-->

            <div class="banners">
                <div class="container">
                    <div class="wrapper">
                        <div class="column">
                            <div class="banner flexwrap">
                                <div class="row">
                                    <a href="#" class="item">
                                        <div class="image">
                                            <img src="assets/img/banner-4.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div class="row">
                                    <a href="#" class="item">
                                        <div class="image">
                                            <img src="assets/img/banner2.jpg" alt="">
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <!-- banners -->

                            <div class="sectop flexitem">
                                <h2><span class="circle"></span><span>Danh sách cửa hàng</span></h2>
                                <div class="second-links">
                                    <a href="#" class="view-all">Xem tất cả
                                        <i class="ri-arrow-right-line"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-categories flexwrap">
                                <div class="row">
                                    <div class="item">
                                        <div class="image">
                                            <a href="#">
                                                <img src="assets/img/cuahang1.webp" alt="">
                                            </a>
                                        </div>
                                        <div class="content mini-links">
                                            <h3 class="name-store"><a href="#">BikeStore.vn Nguyễn Cơ Trạch</a></h3>
                                            <div class="store-address">
                                                <i class="ri-home-4-line"></i>
                                                <p class="address">72 Nguyễn Cơ Trạch, P. An Lợi Đông, TP. Thủ Đức, TP. Hồ Chí Minh</p>
                                            </div>
                                            <div class="phone-num">
                                                <i class="ri-phone-line"></i>
                                                <p>1800 9473</p>
                                            </div>
                                            <div class="time-open">
                                                <i class="ri-time-line"></i>
                                                <p>8 AM - 8 PM (Thứ 2 - Chủ Nhật)</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="item">
                                        <div class="image">
                                            <a href="#">
                                                <img src="assets/img/cuahang2.webp" alt="">
                                            </a>
                                        </div>
                                        <div class="content mini-links">
                                            <h3 class="name-store"><a href="#">BikeStore.vn Nguyễn Đức Cảnh</a></h3>
                                            <div class="store-address">
                                                <i class="ri-home-4-line"></i>
                                                <p class="address">123 Nguyễn Đức Cảnh, P. Tân Phong, Quận 7, TP. Hồ Chí Minh</p>
                                            </div>
                                            <div class="phone-num">
                                                <i class="ri-phone-line"></i>
                                                <p>1800 9473</p>
                                            </div>
                                            <div class="time-open">
                                                <i class="ri-time-line"></i>
                                                <p>8 AM - 9 PM (Thứ 2 - Thứ 7)</p>
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="item">
                                        <div class="image">
                                            <a href="#">
                                                <img src="assets/img/cuahang3.webp" alt="">
                                            </a>
                                        </div>
                                        <div class="content mini-links">
                                            <h3 class="name-store"><a href="#">BikeStore.vn Lê Quang Định</a></h3>
                                            <div class="store-address">
                                                <i class="ri-home-4-line"></i>
                                                <p class="address">10-12 Lê Quang Định, P. 14, Quận Bình Thạnh, TP Hồ Chí Minh</p>
                                            </div>
                                            <div class="phone-num">
                                                <i class="ri-phone-line"></i>
                                                <p>1800 9473</p>
                                            </div>
                                            <div class="time-open">
                                                <i class="ri-time-line"></i>
                                                <p>8 AM - 9 PM (Thứ 2 - Chủ Nhật)</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- product categories -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- banner cửa hàng -->

        </main>
        <!-- main -->

        <jsp:include page="templates/footer.jsp" />
        <style>
            .pro-price {
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .btn-detail {
                display: inline-block;
                padding: 5px 10px;
                border: 1px solid #007bff;
                color: #007bff;
                text-decoration: none;
                border-radius: 5px;
                font-size: 12px;
                transition: background-color 0.3s;
                cursor: pointer;
                background-color: transparent;
            }

            .btn-detail:hover {
                background-color: #007bff;
                color: white;
            }
        </style>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/category.js"></script>
</body>
</html>