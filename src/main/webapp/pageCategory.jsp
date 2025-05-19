<%@ page import="vn.edu.hcmuaf.fit.demo.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Mục</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
    <div id="page" class="site page-category">

        <jsp:include page="templates/header.jsp" />

        <main>
            <div class="single-category">
                <div class="container">
                    <div class="wrapper">
                        <div class="column">
                            <div class="holder">
                                <div class="row sidebar">
                                    <div class="filter">
                                        <div class="filter-block">
                                            <h4>Xe Đạp</h4>
                                            <ul>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="children">
                                                    <label for="children">
                                                        <span class="children"></span>
                                                        <span>Xe Đạp Trẻ Em</span>
                                                    </label>
                                                    <span class="count">72</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="sporty">
                                                    <label for="sporty">
                                                        <span class="checked"></span>
                                                        <span>Xe Đạp Thể Thao</span>
                                                    </label>
                                                    <span class="count">61</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="terrain">
                                                    <label for="terrain">
                                                        <span class="checked"></span>
                                                        <span>Xe Đạp Địa Hình</span>
                                                    </label>
                                                    <span class="count">65</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="racing">
                                                    <label for="racing">
                                                        <span class="checked"></span>
                                                        <span>Xe Đạp Đua</span>
                                                    </label>
                                                    <span class="count">54</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="tour">
                                                    <label for="tour">
                                                        <span class="checked"></span>
                                                        <span>Xe Đạp Touring</span>
                                                    </label>
                                                    <span class="count">83</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="elec">
                                                    <label for="elec">
                                                        <span class="checked"></span>
                                                        <span>Xe Đạp Điện</span>
                                                    </label>
                                                    <span class="count">80</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="school">
                                                    <label for="school">
                                                        <span class="checked"></span>
                                                        <span>Xe Đạp Đi Học</span>
                                                    </label>
                                                    <span class="count">71</span>
                                                </li>
                                            </ul>
                                        </div>
                                   </div>
                                </div>

                                <div class="section features" id="section-children">
                                    <div class="row container">
                                        <div class="cat-head wrapper">
                                            <div class="breadcrumb column">
                                                <ul class="flexitem">
                                                    <li><a href="home.jsp">Trang chủ</a></li>
                                                    <li>
                                                        <c:forEach var="c" items="${categories}">
                                                            <c:if test="${c.id == selectedCategoryId}">
                                                                <p>${c.cateName}</p>
                                                            </c:if>
                                                        </c:forEach>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="page-title">
                                                <c:forEach var="c" items="${categories}">
                                                    <c:if test="${c.id == selectedCategoryId}">
                                                        <p>${c.cateName}</p>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                            <div class="cat-description">
                                                <p>Xe đạp trẻ em là dòng xe đạp được thiết kế đặc biệt cho các bé với kiểu dáng nhỏ gọn, màu sắc tươi sáng và trọng lượng nhẹ. Xe Đạp BikeShop cung cấp đa dạng dòng xe cho bé từ xe đạp thể thao trẻ em đến các mẫu xe đạp trẻ em cao cấp, phù hợp cho mọi độ tuổi. Tất cả xe đạp cho bé đều được thiết kế với tiêu chuẩn an toàn, bền bỉ, giúp bé tự tin vận động. Đặc biệt, giá xe đạp trẻ em luôn cạnh tranh, đi kèm với nhiều ưu đãi hấp dẫn và chính sách bảo hành dài hạn. Mua xe đạp trẻ em ngay hôm nay để nhận ngay ưu đãi tốt nhất cho bé yêu!</p>
                                            </div>
                                            <div class="cat-navigation flexitem">
                                                <div class="item-filter desktop-hide">
                                                    <a href="#" class="filter-trigger label">
                                                        <i class="ri-menu-2-line ri-2x"></i>
                                                        <span>Lọc</span>
                                                    </a>
                                                </div>

                                                <!-- Form lọc sản phẩm -->
                                                <form id="filterForm" action="filterProducts" method="get">

                                                    <input type="number" name="minPrice" step="1000000" placeholder="Giá từ">
                                                    <input type="number" name="maxPrice" step="1000000" placeholder="đến">
                                                    <button type="submit">Lọc</button>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
<%--                                    danh sach--%>
                                    <div class="products main flexwrap">
                                        <c:forEach var="product" items="${products}">
                                            <c:if test="${product.cateId == selectedCategoryId}">
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
                                    </div>
<%--                                    tim kiem--%>
                                    <div class="products main flexwrap">
                                        <c:forEach var="product" items="${searchResults}">
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
                                        </c:forEach>

                                        <!-- Hiển thị thông báo nếu không tìm thấy sản phẩm -->
                                        <c:if test="${empty searchResults}">
                                            <p>Không tìm thấy sản phẩm nào cho từ khóa: <strong>${keyword}</strong></p>
                                        </c:if>
                                    </div>
<%--                                    bo loc--%>
<%--                                    <div class="products main flexwrap">--%>
<%--                                        <c:forEach var="product" items="${products}">--%>

<%--                                            <div class="item">--%>
<%--                                                <div class="media">--%>
<%--                                                    <div class="thumbnail object-cover">--%>
<%--                                                        <a href="#" data-id="${product.id}">--%>
<%--                                                            <img src="${product.thumb}" alt="${product.proName}">--%>
<%--                                                        </a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="hoverable">--%>
<%--                                                        <ul>--%>
<%--                                                            <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>--%>
<%--                                                            <li><a href=""><i class="ri-eye-line"></i></a></li>--%>
<%--                                                        </ul>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="content">--%>
<%--                                                    <div class="rating">--%>
<%--                                                        <div class="mini-text">(4.5)</div>--%>
<%--                                                        <div class="stars" style="width: 17px;"></div>--%>
<%--                                                        <span class="mini-text" style="margin-left: auto;">Số lượng: ${product.quantity}</span>--%>
<%--                                                    </div>--%>
<%--                                                    <h3 class="main-links"><a href="#">${product.proName}</a></h3>--%>
<%--                                                    <div class="price pro-price">--%>
<%--                                                        <span class="current"><f:formatNumber value="${product.price}"/>đ</span>--%>
<%--                                                        <a href="detail?pid=${product.id}" class="btn btn-detail">Xem chi tiết</a>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="footer">--%>
<%--                                                        <ul class="mini-text">--%>
<%--                                                            <li>${product.description}</li>--%>
<%--                                                        </ul>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </c:forEach>--%>
<%--                                    </div>--%>

                                    <div class="load-more flexcenter">
                                        <a href="#" class="secondary-button load-button">Hiển thị thêm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.3.1/index.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/search.js"></script>
    <script src="assets/js/pagination.js"></script>
    <script src="assets/js/category.js"></script>
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
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const sortOptions = document.querySelectorAll("#sortOptions li");
            const sortInput = document.getElementById("sortInput");
            const filterForm = document.getElementById("filterForm");

            // Khi chọn một cách sắp xếp
            sortOptions.forEach(option => {
                option.addEventListener("click", function () {
                    sortInput.value = this.getAttribute("data-sort");
                    filterForm.submit(); // Gửi lại form với kiểu sắp xếp mới
                });
            });

            // Giữ lại giá trị đã chọn khi tải lại trang
            const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has("sort")) {
                sortInput.value = urlParams.get("sort");
            }
        });
    </script>

</body>
</html>