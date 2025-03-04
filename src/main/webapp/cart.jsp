<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div id="page" class="site page-cart">

        <jsp:include page="templates/header.jsp" />

        <main>
            <div class="single-cart">
                <div class="container">
                    <div class="wrappper">
                        <div class="breadcrumb">
                            <ul class="flexitem">
                                <li><a href="#">Trang chủ</a></li>
                                <li>Giỏ Hàng</li>
                            </ul>
                        </div>
                            <div class="page-title" style="display: flex; align-items: center; justify-content: space-between;">
                                <h1>Giỏ Hàng</h1>
                                <a href="home">Tiếp tục mua hàng <i class="ri-arrow-right-line"></i> </a>
                            </div>
                            <div class="products one cart">
                                <div class="flexwrap">
                                    <form action="cart" method="post" class="form-cart">
                                        <div class="item">
                                            <table id="cart-table">
                                                <thead>
                                                    <tr>
                                                        <th>Ảnh</th>
                                                        <th>Tên</th>
                                                        <th>Giá</th>
                                                        <th>Số lượng</th>
                                                        <th>Tổng</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="entry" items="${sessionScope.cart.items}">
                                                    <tr>
                                                        <td>
                                                            <div class="thumbnail object-cover">
                                                                <a href="#"><img src="${entry.value.img}" alt="${entry.value.proName}"></a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div style="text-align: left;">
                                                                <strong><a href="#">${entry.value.proName}</a></strong>
                                                            </div>
                                                        </td>
                                                        <td><f:formatNumber value="${entry.value.price}"/>đ</td>
                                                        <td>
                                                            <form action="cart" method="post" class="update-cart-form">
                                                                <input type="hidden" name="action" value="update">
                                                                <input type="hidden" name="productId" value="${entry.key}">
                                                                <input type="number" name="quantity" value="${entry.value.quantity}" min="0" class="quantity-input">
                                                            </form>
                                                        </td>
                                                        <td><f:formatNumber value="${entry.value.price * entry.value.quantity}"/>đ</td>
                                                        <td>
                                                            <form action="cart" method="post" class="remove-form">
                                                                <input type="hidden" name="action" value="remove">
                                                                <input type="hidden" name="productId" value="${entry.key}">
                                                                <button type="submit" class="item-remove"><i class="ri-close-line"></i></button>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="cart-add">
                                <div class="cart-coupon">
                                    <div class="coupon">
                                        <h3>Mã giảm giá</h3>
                                        <div class="content">
                                            <input type="text" placeholder="Nhập mã giảm giá">
                                            <button class="normal">Áp dụng</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="cart-totals">
                                    <div class="subtotals">
                                        <h3>Thanh toán</h3>
                                        <table>
                                            <tr>
                                                <td>Tổng đơn hàng</td>
                                                <td><f:formatNumber value="${sessionScope.cartTotalPrice}" />đ</td>
                                            </tr>
                                            <tr>
                                                <td>Phí vận chuyển (10%)</td>
                                                <td><f:formatNumber value="${sessionScope.cartTotalPrice * 0.1}" />đ</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Tổng</strong></td>
                                                <td><f:formatNumber value="${sessionScope.cartTotalPrice + sessionScope.cartTotalPrice * 0.1}" />đ</td>
                                            </tr>
                                        </table>
                                        <button class="normal"><a href="checkout.jsp">Thanh toán</a></button>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>

        </main>
        <!-- main -->

        <jsp:include page="templates/footer.jsp" />
        <style>
            .page-title a {
                font-size: 12px;
                background-color: #2e77ba;
                padding: 9px;
                border: none;
                border-radius: 5px;
                color: white;
                font-weight: bold;
            }
            .page-title button:hover {
                background-color: #000;
            }
        </style>
    </div>
<%--    xử lý giỏ hàng--%>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.3.1/index.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/category.js"></script>
    <script src="assets/js/store.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const quantityInputs = document.querySelectorAll('.quantity-input');

            quantityInputs.forEach(input => {
                input.addEventListener('change', function () {
                    this.closest('form').submit();
                });
            });
        });
    </script>
    <!-- jquery load trang -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        const FtoShow = '.filter';
        const Fpopup = document.querySelector(FtoShow);
        const Ftrigger = document.querySelector('.filter-trigger');

        Ftrigger.addEventListener('click', () => {
            setTimeout(() => {
                if(!Fpopup.classList.contains('show')) {
                    Fpopup.classList.add('show')
                }
            }, 250 )
        })

        // auto close by click outside .filter
        document.addEventListener('click', (e) => {
            const isClosest = e.target.closest(FtoShow);
            if(!isClosest && Fpopup.classList.contains('show')) {
                Fpopup.classList.remove('show')
            }
        })
    </script>
</body>
</html>