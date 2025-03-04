<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết sản phẩm</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div id="page" class="site page-single">

        <jsp:include page="templates/header.jsp" />

        <main>
        
            <div class="single-product">
                <div class="container">
                    <div class="wrapper">
                        <div class="breadcrumb">
                            <ul class="flexitem">
                                <li><a href="home.jsp">Trang chủ</a></li>
                                <li><a href="#">Thương hiệu xe đạp</a></li>
                                <li><a href="#">Xe đạp</a></li>
                            </ul>
                        </div>
                        <!-- breadcrumb -->

                        <div class="column">
                            <div class="products one">
                                <div class="flexwrap">
                                    <div class="row">
                                        <div class="item is_sticky">
                                            <div class="price">
                                            </div>
                                            <div class="big-image">
                                                <div class="big-image-wrapper swiper-wrapper">
                                                    <c:forEach var="image" items="${productImages}">
                                                        <div class="image-show swiper-slide">
                                                            <a data-fslightbox href="${image}">
                                                                <img src="${image}" alt="Product Image">
                                                            </a>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                                <div class="swiper-button-next"></div>
                                                <div class="swiper-button-prev"></div>
                                            </div>


                                            <div thumbSlider="" class="small-image">
                                                <ul class="small-image-wrapper flexitem swiper-wrapper">
                                                    <c:forEach var="image" items="${productImages}">
                                                        <li class="thumbnail-show swiper-slide">
                                                            <img src="${image}" alt="Thumbnail">
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">   
                                        <div class="item">
                                            <h1>${proDetail.proName}</h1>
                                            <div class="content">
                                                <div class="price">
                                                    <span class="current"><f:formatNumber value="${proDetail.price}"/>đ</span>
                                                </div>
                                                <div class="actions">
                                                    <form action="cart" method="post">
                                                        <input type="hidden" name="action" value="add">
                                                        <input type="hidden" name="productId" value="${proDetail.id}">
                                                        <button class="add-to-cart">Thêm giỏ hàng</button>
                                                    </form>
                                                    <div class="wish-share">
                                                        <ul class="flexitem second-links">
                                                            <li><a href="#">
                                                                <span class="icon-large"><i class="ri-heart-line"></i></span>
                                                                <span>Yêu thích</span>
                                                            </a></li>
                                                            <li><a href="#">
                                                                <span class="icon-large"><i class="ri-share-line"></i></span>
                                                                <span>Chia sẻ</span>
                                                            </a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="description collapse">
                                                    <ul>
                                                        <li class="has-child">
                                                            <a href="#0" class="icon-small">Mô tả</a>
                                                            <div class="content">
                                                                <span><i class="ri-git-commit-fill"></i>${proDetail.description}</span>
                                                            </div>
                                                        <li class="has-child expand">
                                                            <a href="#" class="icon-small">Đánh giá</a>
                                                            <div class="content">
                                                                <div class="reviews">
                                                                    <div class="review-block">
                                                                        <div id="review-rorm" class="review-form">
                                                                            <div class="rating">
                                                                                <p>Bạn có hài lòng không?</p>
                                                                            </div>
                                                                            <form action="">
                                                                                <p>
                                                                                    <label>Họ tên</label>
                                                                                    <input type="text">
                                                                                </p>
                                                                                <p>
                                                                                    <label>Đánh giá</label>
                                                                                    <textarea cols="30" rows="10"></textarea>
                                                                                </p>
                                                                                <p><a href="#" class="primary-button">Gửi đánh giá</a></p>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- sản phẩm chính -->

<%--            <div class="features">--%>
<%--                <div class="container">--%>
<%--                    <div class="wrapper">--%>
<%--                        <div class="column">--%>
<%--                            <div class="sectop flexitem">--%>
<%--                                <h2><span class="circle"></span><span>Có thể bạn thích</span></h2>--%>
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
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Life Horse Fx2</a></h3>--%>
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
<%--                                            <span class="mini-text">(362)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Life Fix735 700C</a></h3>--%>
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
<%--                                            <span class="mini-text">(231)</span>--%>
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
<%--                                            <span class="mini-text">(713)</span>--%>
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
<%--                                            <span class="mini-text">(225)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Funky Locking Nhật Bản</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">7.590.000đ</span>--%>
<%--                                            <span class="normal mini-text">7.990.000đ</span>--%>
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
<%--                                            <span class="mini-text">(1,022)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Life Fix 735-700C</a></h3>--%>
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
<%--                                            <span class="mini-text">(355)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình Giant ATX 720-2021</a></h3>--%>
<%--                                        <div class="price">--%>
<%--                                            <span class="current">10.750.000đ</span>--%>
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
<%--                                            <span class="mini-text">(425)</span>--%>
<%--                                        </div>--%>
<%--                                        <h3 class="main-links"><a href="#">Xe Đạp Touring Twtter R12 Tay Ngang</a></h3>--%>
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
            <!-- product liên quan-->
        
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

        </main>
        <!-- main -->
        <jsp:include page="templates/footer.jsp" />
    <style>

        .quantity-selector {
            display: flex;
            align-items: center;
            margin-top: 10px;
        }


        .add-to-cart {
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #2e77ba;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .add-to-cart:hover {
            background-color: #0056b3;
        }
        .flexitem .second-links {
            font-size: 0.8em;
        }

    </style>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.3.1/index.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/category.js"></script>
</body>
</html>