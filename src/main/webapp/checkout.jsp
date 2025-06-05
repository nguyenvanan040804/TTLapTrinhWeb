<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    // Giả sử totalPrice ban đầu được đặt trong session hoặc được tính toán trước đó
    Double totalPrice = (Double) session.getAttribute("totalPrice");
    if (totalPrice == null) {
        totalPrice = 0.0; // Hoặc giá trị mặc định phù hợp
    }
    // Tăng totalPrice thêm 10%
    totalPrice = totalPrice * 1.1;
    // Lưu totalPrice mới vào session
    session.setAttribute("totalPrice", totalPrice);
%>


<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400&display=swap"
          rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<div id="page" class="site page-cart">

    <aside class="site-off desktop-hide">
        <div class="off-canvas">
            <div class="canvas-head flexitem">
                <div class="logo"><a href="/"><span class="circle"></span>.BikeStore</a></div>
                <a href="#" class="t-close flexcenter"><i class="ri-close-line"></i></a>
            </div>
            <div class="departments"></div>
            <nav></nav>
            <div class="thetop-nav"></div>
        </div>
    </aside>

    <jsp:include page="templates/header.jsp"/>

    <main>
        <div class="single-cart">
            <div class="container">
                <div class="wrappper">
                    <div class="checkout flexwrap">
                        <div class="item left styled">
                            <h1>Địa chỉ giao hàng</h1>
                            <form action="">
                                <p>
                                    <label for="email">Email <span></span></label>
                                    <input type="email" name="email" id="email" autocomplete="off" required>
                                </p>
                                <p>
                                    <label for="fname">Họ <span></span></label>
                                    <input type="text" id="fname" required>
                                </p>
                                <p>
                                    <label for="lname">Tên <span></span></label>
                                    <input type="text" id="lname" required>
                                </p>
                                <p>
                                    <label for="cname">Tên doanh nghiệp <span></span></label>
                                    <input type="text" id="cname">
                                </p>
                                <p>
                                    <label for="address">Địa chỉ <span></span></label>
                                    <input type="text" id="address" required>
                                </p>
                                <p>
                                    <label for="city">Thành phố <span></span></label>
                                    <input type="text" id="city" required>
                                </p>
                                <p>
                                    <label for="state">Tỉnh/Thành phố <span></span></label>
                                    <input type="text" id="state" required>
                                </p>
                                <p>
                                    <label for="postal">Mã Zip/Bưu chính <span></span></label>
                                    <input type="number" id="postal" required>
                                </p>
                                <p>
                                    <label for="country">Quốc gia</label>
                                    <select name="country" id="country">
                                        <option value=""></option>
                                        <option value="1">Lào</option>
                                        <option value="2">Campuchia</option>
                                        <option value="3">Thái Lan</option>
                                        <option value="4" selected="selected">Việt Nam</option>
                                        <option value="5">Khác</option>
                                    </select>
                                </p>
                                <p>
                                    <label for="phone">Số điện thoại <span></span></label>
                                    <input type="number" id="phone" required>
                                </p>
                                <p>
                                    <label>Ghi chú (Tùy chọn)</label>
                                    <textarea cols="30" rows="10"></textarea>
                                </p>
                                <p class="checkset">
                                    <input type="checkbox" id="anaccount">
                                    <label for="anaccount">Tạo tài khoản?</label>
                                </p>

                            </form>
                            <div class="shipping-methods">
                                <h4>Phương thức giao hàng:</h4>
                                <p class="checkset">
                                    <input type="radio" checked>
                                    <label>Thanh toán với VNPay</label>
                                </p>
                            </div>
                            <div class="primary-checkout">
                                <form action="payment" method="get">
                                    <button class="primary-button" type="submit">Xác Nhận Thanh Toán</button>
                                </form>
                            </div>
                        </div>
                        <div class="item right">
                            <h3>Đơn Hàng</h3>
                            <div class="summary-order is_sticky">
                                <c:set var="shippingFee" value="100000" />
                                <c:set var="grandTotal" value="${totalPrice - discount + shippingFee}" />

                                <div class="summary-totals">
                                    <ul>
                                        <li>
                                            <span>Tổng</span>
                                            <span><fmt:formatNumber value="${sessionScope.totalPrice}" pattern="#,##0" />đ</span>
                                        </li>
                                        <li>
                                            <span>Giảm giá</span>
                                            <span>-<fmt:formatNumber value="${discount}" pattern="#,##0" />đ</span>
                                        </li>
                                        <li>
                                            <span>Giao hàng: mặc định</span>
                                            <span><fmt:formatNumber value="${shippingFee}" pattern="#,##0" />đ</span>
                                        </li>
                                        <li>
                                            <span>Tổng cộng</span>
                                            <span><fmt:formatNumber value="${grandTotal}" pattern="#,##0" />đ</span>
                                        </li>
                                    </ul>
                                </div>


                                <ul class="products mini">
                                    <c:forEach var="item" items="${orderItems}">
                                        <li class="item">
                                            <div class="thumbnail object-cover">
                                                <img src="assets/img/${item.productId}.jpg" alt="">
                                            </div>
                                            <div class="item-content">
                                                <p>Sản phẩm ID: ${item.productId}</p>
                                                <span class="price">
                                                    <span>${item.price}đ</span>
                                                    <span>x ${item.quantity}</span>
                                                </span>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </main>
    <!-- main -->

    <jsp:include page="templates/footer.jsp"/>

    <div id="modal" class="modal">
        <div class="content flexcol">
            <div class="image object-cover">
                <img src="assets/img/uudai.jpg" alt="">
            </div>
            <h2>Nhận ưu đãi và phiếu giảm giá mới</h2>
            <p class="mobile-hide">Mua sắm online thú vị hơn bao giờ hết với ưu đãi khách hàng mới BikeShop. Nhanh tay
                đặt đơn hàng đầu tiên trên BikeShop để được nhận quà tặng độc quyền bạn nhé</p>
            <form action="" class="search">
                <span class="icon-large"><i class="ri-mail-line"></i></span>
                <input type="email" placeholder="Email của bạn">
                <button>Đăng ký</button>
            </form>
            <a href="#" class="mini-text">Không hiển thị lại</a>
            <a href="#" class="t-close modalclose flexcenter">
                <i class="ri-close-line"></i>
            </a>
        </div>
    </div>
    <!-- modal mã giảm giá -->


</div>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.3.1/index.js"></script>
<script src="assets/js/script.js"></script>
<script src="assets/js/category.js"></script>
<script>
    const FtoShow = '.filter';
    const Fpopup = document.querySelector(FtoShow);
    const Ftrigger = document.querySelector('.filter-trigger');

    Ftrigger.addEventListener('click', () => {
        setTimeout(() => {
            if (!Fpopup.classList.contains('show')) {
                Fpopup.classList.add('show')
            }
        }, 250)
    })

    // auto close by click outside .filter
    document.addEventListener('click', (e) => {
        const isClosest = e.target.closest(FtoShow);
        if (!isClosest && Fpopup.classList.contains('show')) {
            Fpopup.classList.remove('show')
        }
    })
</script>
</body>
</html>