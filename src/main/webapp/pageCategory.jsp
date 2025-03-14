<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                                            <h4>Phụ Kiện</h4>
                                            <ul>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="water">
                                                    <label for="water">
                                                        <span class="checked"></span>
                                                        <span>Bình Nước</span>
                                                    </label>
                                                    <span class="count">60</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="saddle">
                                                    <label for="saddle">
                                                        <span class="checked"></span>
                                                        <span>Yên Xe</span>
                                                    </label>
                                                    <span class="count">66</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="bell">
                                                    <label for="bell">
                                                        <span class="checked"></span>
                                                        <span>Chuông</span>
                                                    </label>
                                                    <span class="count">68</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="clean">
                                                    <label for="clean">
                                                        <span class="checked"></span>
                                                        <span>Đồ Vệ Sinh</span>
                                                    </label>
                                                    <span class="count">69</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="kickstand">
                                                    <label for="kickstand">
                                                        <span class="checked"></span>
                                                        <span>Chân Chống</span>
                                                    </label>
                                                    <span class="count">74</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="pump">
                                                    <label for="pump">
                                                        <span class="checked"></span>
                                                        <span>Bơm Xe Đạp</span>
                                                    </label>
                                                    <span class="count">63</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="helmet">
                                                    <label for="helmet">
                                                        <span class="checked"></span>
                                                        <span>Nón Bảo Hiểm</span>
                                                    </label>
                                                    <span class="count">77</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="bags">
                                                    <label for="bags">
                                                        <span class="checked"></span>
                                                        <span>Túi Treo Xe</span>
                                                    </label>
                                                    <span class="count">58</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="led">
                                                    <label for="led">
                                                        <span class="checked"></span>
                                                        <span>Đèn Xe</span>
                                                    </label>
                                                    <span class="count">62</span>
                                                </li>
                                            </ul>
                                            <h4>Brands</h4>
                                            <ul>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="giant">
                                                    <label for="giant">
                                                        <span class="checked"></span>
                                                        <span>Giant</span>
                                                    </label>
                                                    <span class="count">59</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="momentun">
                                                    <label for="momentun">
                                                        <span class="checked"></span>
                                                        <span>Momentun</span>
                                                    </label>
                                                    <span class="count">84</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="royal">
                                                    <label for="royal">
                                                        <span class="checked"></span>
                                                        <span>RoyalBaby</span>
                                                    </label>
                                                    <span class="count">57</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="jeep">
                                                    <label for="jeep">
                                                        <span class="checked"></span>
                                                        <span>Jeep</span>
                                                    </label>
                                                    <span class="count">75</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="liv">
                                                    <label for="liv">
                                                        <span class="checked"></span>
                                                        <span>Liv</span>
                                                    </label>
                                                    <span class="count">70</span>
                                                </li>
                                                <li>
                                                    <input type="checkbox" name="checkbox" id="max">
                                                    <label for="max">
                                                        <span class="checked"></span>
                                                        <span>Max</span>
                                                    </label>
                                                    <span class="count">75</span>
                                                </li>
                                            </ul>
                                        </div>

                                    <div class="filter-block products">
                                        <h4>Màu</h4>
                                        <ul class="bycolor variant flexitem">
                                            <li>
                                                <input type="radio" name="color" id="cogrey">
                                                <label for="cogrey" class="circle"></label>
                                            </li>
                                            <li>
                                                <input type="radio" name="color" id="coblue">
                                                <label for="coblue" class="circle"></label>
                                            </li>
                                            <li>
                                                <input type="radio" name="color" id="cogreen">
                                                <label for="cogreen" class="circle"></label>
                                            </li>
                                            <li>
                                                <input type="radio" name="color" id="cored">
                                                <label for="cored" class="circle"></label>
                                            </li>
                                            <li>
                                                <input type="radio" name="color" id="colight">
                                                <label for="colight" class="circle"></label>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="filter-block pricing">
                                        <h4>Giá</h4>
                                        <div class="byprice">
                                            <div class="range-track">
                                                <input type="range" value="250000" min="0" max="150000000">
                                            </div>
                                            <div class="price-range">
                                                <span class="price-form">100.000đ</span>
                                                <span class="price-to">150.000.000đ</span>
                                            </div>
                                        </div>
                                    </div>
                                   </div>
                                </div>
                                <div class="section features" id="section-children">
                                    <div class="row container">
                                        <div class="cat-head wrapper">
                                            <div class="breadcrumb column">
                                                <ul class="flexitem">
                                                    <li><a href="home.jsp">Trang chủ</a></li>
                                                    <li>Xe đạp trẻ em</li>
                                                </ul>
                                            </div>
                                            <div class="page-title">
                                                <h1>Xe Đạp Trẻ Em</h1>
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
                                                <div class="item-sortir">
                                                    <div class="label">
                                                        <span class="mobile-hide">Sắp xếp mặc định</span>
                                                        <div class="desktop-hide">Mặc định</div>
                                                        <i class="ri-arrow-down-s-line"></i>
                                                    </div>
                                                    <ul id="sortOptions">
                                                        <li data-sort="default">Mặc định</li>
                                                        <li data-sort="name">Tên sản phẩm</li>
                                                        <li data-sort="price">Giá</li>
                                                        <li data-sort="brand">Hãng</li>
                                                    </ul>
                                                </div>
                                            </div>
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
                                    </div>
                                    <div class="load-more flexcenter">
                                        <a href="#" class="secondary-button load-button">Hiển thị thêm</a>
                                    </div>

                                </div>
                                <div class="section" id="section-sporty" style="display: none;">
                                    <div class="row">
                                        <div class="cat-head">
                                            <div class="breadcrumb">
                                                <ul class="flexitem">
                                                    <li><a href="home.jsp">Trang chủ</a></li>
                                                    <li>Xe đạp thể thao</li>
                                                </ul>
                                            </div>
                                            <div class="page-title">
                                                <h1>Xe Đạp Thể Thao</h1>
                                            </div>
                                            <div class="cat-description">
                                                <p>Xe đạp thể thao đa dạng với nhiều mẫu xe đạp thể thao phù hợp cho mọi nhu cầu. Tại đây, bạn có thể chọn mua xe đạp thể thao chất lượng từ xe đạp thể thao giá rẻ đến xe đạp thể thao cao cấp với giá hợp lý. Xe Đạp Giá Kho cung cấp xe đạp thể thao toàn quốc, với top xe đạp thể thao đẹp, bền và hiệu suất cao. Tham khảo ngay giá xe đạp thể thao chi tiết dưới đây để tìm được sản phẩm ưng ý. Hãy chọn xe đạp thể thao rẻ, xe đạp chạy thể thao và nhiều lựa chọn khác cho bạn tại Xe Đạp Giá Kho nhé.</p>
                                            </div>
                                            <div class="cat-navigation flexitem">
                                                <div class="item-filter desktop-hide">
                                                    <a href="#" class="filter-trigger label">
                                                        <i class="ri-menu-2-line ri-2x"></i>
                                                        <span>Lọc</span>
                                                    </a>
                                                </div>
                                                <div class="item-sortir">
                                                    <div class="label">
                                                        <span class="mobile-hide">Sắp xếp mặc định</span>
                                                        <div class="desktop-hide">Mặc định</div>
                                                        <i class="ri-arrow-down-s-line"></i>
                                                    </div>
                                                    <ul>
                                                        <li>Mặc định</li>
                                                        <li>Tên sản phẩm</li>
                                                        <li>Giá</li>
                                                        <li>Hãng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="products main flexwrap">
                                        <!-- products category structure -->
                                        <div class="item">
                                            <div class="media">
                                                <div class="thumbnail object-cover">
                                                    <a href="#">
                                                        <img src="assets/img/sport-7.jpg" alt="">
                                                    </a>
                                                </div>
                                                <div class="hoverable">
                                                    <ul>
                                                        <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                        <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                        <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="discount circle flexcenter"><span>8%</span></div>
                                            </div>
                                            <div class="content">
                                                <div class="rating">
                                                    <div class="stars"></div>
                                                    <span class="mini-text">(619)</span>
                                                </div>
                                                <h3 class="main-links"><a href="#">Xe Đạp Đua DTFLY R-2000 – Khung Nhôm | Tay Đề Lắc | Shimano Claris | Phanh Đĩa Cơ Giá Rẻ</a></h3>
                                                <div class="price">
                                                    <span class="current">10.890.000đ</span>
                                                    <span class="normal mini-text">11.900.000đ</span>
                                                </div>
                                                <div class="footer">
                                                    <ul class="mini-text">
                                                        <li>Thiết kế phong cách thể thao, mạnh mẽ</li>
                                                        <li>Phù hợp với người cao từ 1m60 trở lên</li>
                                                        <li>Chịu tải trọng lên đến 120kg</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="media">
                                                <div class="thumbnail object-cover">
                                                    <a href="#">
                                                        <img src="assets/img/sport-8.jpg" alt="">
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
                                                    <span class="mini-text">(183)</span>
                                                </div>
                                                <h3 class="main-links"><a href="#">Xe Đạp Touring Papylus Pt700s – Khung Nhôm | Shimano Giá Rẻ | Khuyến mãi Hot</a></h3>
                                                <div class="price">
                                                    <span class="current">3.890.000đ</span>
                                                    <span class="normal mini-text">4.000.000đ</span>
                                                </div>
                                                <div class="footer">
                                                    <ul class="mini-text">
                                                        <li>Thiết kế phong cách thể thao, mạnh mẽ</li>
                                                        <li>Phù hợp với người cao từ 1m6 trở lên</li>
                                                        <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="btn-hidden1" class="load-more flexcenter">
                                        <a href="#" class="secondary-button">Hiển thị thêm</a>
                                    </div>
                                </div>
                                <div class="section" id="section-racing" style="display: none;">
                                    <div class="row">
                                        <div class="cat-head">
                                            <div class="breadcrumb">
                                                <ul class="flexitem">
                                                    <li><a href="home.jsp">Trang chủ</a></li>
                                                    <li>Xe đạp đua</li>
                                                </ul>
                                            </div>
                                            <div class="page-title">
                                                <h1>Xe Đạp Đua</h1>
                                            </div>
                                            <div class="cat-description">
                                                <p>Xe đạp đua là dòng xe được thiết kế đặc biệt để đạt tốc độ cao và hiệu suất tối đa trên đường trường. Mua xe đạp đua giá rẻ với nhiều lựa chọn. Tham khảo giá xe đạp đua mới nhất. Xem ngay các mẫu xe đạp đường trường, xe đạp đua chuyên nghiệp, xe đạp đua Carbon cao cấp với nhiều ưu đãi hấp dẫn!</p>
                                            </div>
                                            <div class="cat-navigation flexitem">
                                                <div class="item-filter desktop-hide">
                                                    <a href="#" class="filter-trigger label">
                                                        <i class="ri-menu-2-line ri-2x"></i>
                                                        <span>Lọc</span>
                                                    </a>
                                                </div>
                                                <div class="item-sortir">
                                                    <div class="label">
                                                        <span class="mobile-hide">Sắp xếp mặc định</span>
                                                        <div class="desktop-hide">Mặc định</div>
                                                        <i class="ri-arrow-down-s-line"></i>
                                                    </div>
                                                    <ul>
                                                        <li>Mặc định</li>
                                                        <li>Tên sản phẩm</li>
                                                        <li>Giá</li>
                                                        <li>Hãng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="products main flexwrap">
                                        <!-- products category structure -->
                                        <div class="item">
                                            <div class="media">
                                                <div class="thumbnail object-cover">
                                                    <a href="#">
                                                        <img src="assets/img/Xe-Dap-Dua-Twitter-R12-Tiagra-R4700-18-600x399.jpg" alt="">
                                                    </a>
                                                </div>
                                                <div class="hoverable">
                                                    <ul>
                                                        <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                        <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                        <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="discount circle flexcenter"><span>17%</span></div>
                                            </div>
                                            <div class="content">
                                                <div class="rating">
                                                    <div class="stars"></div>
                                                    <span class="mini-text">(744)</span>
                                                </div>
                                                <h3 class="main-links"><a href="#">Xe Đạp Đua Twitter R12 Tiagra R4700 – Khung Carbon</a></h3>
                                                <div class="price">
                                                    <span class="current">20.290.000đ</span>
                                                    <span class="normal mini-text">24.300.000đ</span>
                                                </div>
                                                <div class="footer">
                                                    <ul class="mini-text">
                                                        <li>Phù hợp với người cao từ 1m60 </li>
                                                        <li>Chịu tải trọng lên đến 110kg</li>
                                                        <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="load-more flexcenter">
                                        <a href="#" class="secondary-button">Hiển thị thêm</a>
                                    </div>
                                </div>
                                <div class="section" id="section-terrain" style="display: none;">
                                    <div class="row">
                                        <div class="cat-head">
                                            <div class="breadcrumb">
                                                <ul class="flexitem">
                                                    <li><a href="home.jsp">Trang chủ</a></li>
                                                    <li>Xe đạp địa hình</li>
                                                </ul>
                                            </div>
                                            <div class="page-title">
                                                <h1>Xe Đạp Địa Hình</h1>
                                            </div>
                                            <div class="cat-description">
                                                <p>Xe đạp địa hình (MTB) là dòng xe đạp thiết kế phù hợp để phục vụ cho việc đạp xe leo núi, đạp xe vượt địa hình và đi trên những con đường không bằng phẳng. Xe đạp thể thao địa hình có các loại phổ biến như xe đạp leo núi, xe đạp địa hình trẻ em, xe đạp địa hình người lớn phù hợp với nam và nữ. </p>
                                            </div>
                                            <div class="cat-navigation flexitem">
                                                <div class="item-filter desktop-hide">
                                                    <a href="#" class="filter-trigger label">
                                                        <i class="ri-menu-2-line ri-2x"></i>
                                                        <span>Lọc</span>
                                                    </a>
                                                </div>
                                                <div class="item-sortir">
                                                    <div class="label">
                                                        <span class="mobile-hide">Sắp xếp mặc định</span>
                                                        <div class="desktop-hide">Mặc định</div>
                                                        <i class="ri-arrow-down-s-line"></i>
                                                    </div>
                                                    <ul>
                                                        <li>Mặc định</li>
                                                        <li>Tên sản phẩm</li>
                                                        <li>Giá</li>
                                                        <li>Hãng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="products main flexwrap">
                                        <!-- products category structure -->
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
                                                <div class="discount circle flexcenter"><span>17%</span></div>
                                            </div>
                                            <div class="content">
                                                <div class="rating">
                                                    <div class="stars"></div>
                                                    <span class="mini-text">(31)</span>
                                                </div>
                                                <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Fascino 323 24 Inch – Phanh Đĩa</a></h3>
                                                <div class="price">
                                                    <span class="current">2.990.000đ</span>
                                                    <span class="normal mini-text">3.600.000đ</span>
                                                </div>
                                                <div class="footer">
                                                    <ul class="mini-text">
                                                        <li>Khung xe được làm từ hợp kim thép rất bền</li>
                                                        <li>Hệ thống phanh đĩa cung cấp hiệu suất phanh ổn định</li>
                                                        <li>Phù hợp với người cao từ 1m40 trở lên</li>
                                                        <li>Xe Nhập Khẩu Chính Hãng</li>
                                                        <li>Bảo Hành 12 Tháng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="btn-hidden2" class="load-more flexcenter">
                                        <a href="#" class="secondary-button">Hiển thị thêm</a>
                                    </div>
                                </div>
                                <div class="section" id="section-tour" style="display: none;">
                                    <div class="row">
                                        <div class="cat-head">
                                            <div class="breadcrumb">
                                                <ul class="flexitem">
                                                    <li><a href="home.jsp">Trang chủ</a></li>
                                                    <li>Xe đạp touring</li>
                                                </ul>
                                            </div>
                                            <div class="page-title">
                                                <h1>Xe Đạp Touring</h1>
                                            </div>
                                            <div class="cat-description">
                                                <p>Xe đạp touring là mẫu xe đạp thể thao đường phố phù hợp cho những ai yêu thích những chuyến đi dài và đạp xe rèn luyện sức khỏe. Đa dạng mẫu mã từ cao cấp đến giá rẻ,  xem ngay các mẫu xe đạp touring thể thao để nhận ưu đãi hấp dẫn, giao hàng miễn phí tận nơi, cùng chính sách bảo hành uy tín, giúp bạn an tâm trên từng chuyến hành trình!</p>
                                            </div>
                                            <div class="cat-navigation flexitem">
                                                <div class="item-filter desktop-hide">
                                                    <a href="#" class="filter-trigger label">
                                                        <i class="ri-menu-2-line ri-2x"></i>
                                                        <span>Lọc</span>
                                                    </a>
                                                </div>
                                                <div class="item-sortir">
                                                    <div class="label">
                                                        <span class="mobile-hide">Sắp xếp mặc định</span>
                                                        <div class="desktop-hide">Mặc định</div>
                                                        <i class="ri-arrow-down-s-line"></i>
                                                    </div>
                                                    <ul>
                                                        <li>Mặc định</li>
                                                        <li>Tên sản phẩm</li>
                                                        <li>Giá</li>
                                                        <li>Hãng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="products main flexwrap">
                                        <!-- products category structure -->
                                        <div class="item">
                                            <div class="media">
                                                <div class="thumbnail object-cover">
                                                    <a href="#">
                                                        <img src="assets/img/Xe-Dap-Touring-Catani-TR3.0-600x420.jpg" alt="">
                                                    </a>
                                                </div>
                                                <div class="hoverable">
                                                    <ul>
                                                        <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                        <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                        <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="discount circle flexcenter"><span>6%</span></div>
                                            </div>
                                            <div class="content">
                                                <div class="rating">
                                                    <div class="stars"></div>
                                                    <span class="mini-text">(744)</span>
                                                </div>
                                                <h3 class="main-links"><a href="#">Xe Đạp Touring Catani CA-2.1 700c Khung Nhôm</a></h3>
                                                <div class="price">
                                                    <span class="current">4.590.000đ</span>
                                                    <span class="normal mini-text">4.890.000đ</span>
                                                </div>
                                                <div class="footer">
                                                    <ul class="mini-text">
                                                        <li>Thiết kế phong cách thể thao và sang trọng</li>
                                                        <li>Chịu tải trọng lên đến 110kg</li>
                                                        <li>Xe Nhập Khẩu Chính Hãng Bảo Hành 12 Tháng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="load-more flexcenter">
                                        <a href="#" class="secondary-button">Hiển thị thêm</a>
                                    </div>
                                </div>
                                <div class="section" id="section-school" style="display: none;">
                                    <div class="row">
                                        <div class="cat-head">
                                            <div class="breadcrumb">
                                                <ul class="flexitem">
                                                    <li><a href="home.jsp">Trang chủ</a></li>
                                                    <li>Xe đạp phổ thông</li>
                                                </ul>
                                            </div>
                                            <div class="page-title">
                                                <h1>Xe Đạp Phổ Thông</h1>
                                            </div>
                                            <div class="cat-description">
                                                <p>Xe đạp phổ thông là mẫu xe đạp đơn giản, phổ biến đi lại hằng ngày nhờ vào độ bền bỉ và giá cả hợp lý. Các mẫu xe đạp phổ thông giá rẻ đảm bảo tính tiện lợi, dễ sử dụng mang đến sự an tâm về chất lượng cho mọi người. Xem ngay các mẫu xe đạp phổ thông chất lượng, phù hợp với mọi đối tượng sử dụng!</p>
                                            </div>
                                            <div class="cat-navigation flexitem">
                                                <div class="item-filter desktop-hide">
                                                    <a href="#" class="filter-trigger label">
                                                        <i class="ri-menu-2-line ri-2x"></i>
                                                        <span>Lọc</span>
                                                    </a>
                                                </div>
                                                <div class="item-sortir">
                                                    <div class="label">
                                                        <span class="mobile-hide">Sắp xếp mặc định</span>
                                                        <div class="desktop-hide">Mặc định</div>
                                                        <i class="ri-arrow-down-s-line"></i>
                                                    </div>
                                                    <ul>
                                                        <li>Mặc định</li>
                                                        <li>Tên sản phẩm</li>
                                                        <li>Giá</li>
                                                        <li>Hãng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="products main flexwrap">
                                        <!-- products category structure -->
                                        <div class="item">
                                            <div class="media">
                                                <div class="thumbnail object-cover">
                                                    <a href="#">
                                                        <img src="assets/img/xe-dap-nu-brave-will-relax-2-suon-24-inch-600x398.jpg" alt="">
                                                    </a>
                                                </div>
                                                <div class="hoverable">
                                                    <ul>
                                                        <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                        <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                        <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="discount circle flexcenter"><span>23%</span></div>
                                            </div>
                                            <div class="content">
                                                <div class="rating">
                                                    <div class="stars"></div>
                                                    <span class="mini-text">(1,601)</span>
                                                </div>
                                                <h3 class="main-links"><a href="#">Xe Đạp Nữ Brave Will Relax 2 Sườn 24 Inch</a></h3>
                                                <div class="price">
                                                    <span class="current">1.450.000đ</span>
                                                    <span class="normal mini-text">1.890.000đ</span>
                                                </div>
                                                <div class="footer">
                                                    <ul class="mini-text">
                                                        <li>Thiết kế phong cách dịu dàng, đằm thắm</li>
                                                        <li>Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối</li>
                                                        <li>Phù hợp với các bé từ 90cm</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="load-more flexcenter">
                                        <a href="#" class="secondary-button">Hiển thị thêm</a>
                                    </div>
                                </div>
                                <div class="section" id="section-elec" style="display: none;">
                                    <div class="row">
                                        <div class="cat-head">
                                            <div class="breadcrumb">
                                                <ul class="flexitem">
                                                    <li><a href="home.jsp">Trang chủ</a></li>
                                                    <li>Xe đạp điện</li>
                                                </ul>
                                            </div>
                                            <div class="page-title">
                                                <h1>Xe Đạp Điện</h1>
                                            </div>
                                            <div class="cat-description">
                                                <p>Xe điện được thiết kế với kiểu dáng gọn gàng, cá tính và trẻ trung, dễ dàng cho bạn khi lái xe. Nếu bạn muốn chở các bé, bạn bè, người thân yêu đi chơi, dạo vòng quanh công viên thành phố hay chỉ đơn thuần là đang tìm kiếm một phương tiện thân thiện, an toàn với môi trường để di chuyển thì xe điện chính là sự lựa chọn hoàn hảo dành riêng cho bạn.</p>
                                            </div>
                                            <div class="cat-navigation flexitem">
                                                <div class="item-filter desktop-hide">
                                                    <a href="#" class="filter-trigger label">
                                                        <i class="ri-menu-2-line ri-2x"></i>
                                                        <span>Lọc</span>
                                                    </a>
                                                </div>
                                                <div class="item-sortir">
                                                    <div class="label">
                                                        <span class="mobile-hide">Sắp xếp mặc định</span>
                                                        <div class="desktop-hide">Mặc định</div>
                                                        <i class="ri-arrow-down-s-line"></i>
                                                    </div>
                                                    <ul>
                                                        <li>Mặc định</li>
                                                        <li>Tên sản phẩm</li>
                                                        <li>Giá</li>
                                                        <li>Hãng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="products main flexwrap">
                                        <!-- products category structure -->
                                        <div class="item">
                                            <div class="media">
                                                <div class="thumbnail object-cover">
                                                    <a href="#">
                                                        <img src="assets/img/elec3.png" alt="">
                                                    </a>
                                                </div>
                                                <div class="hoverable">
                                                    <ul>
                                                        <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                        <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                        <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="discount circle flexcenter"><span>10%</span></div>
                                            </div>
                                            <div class="content">
                                                <div class="rating">
                                                    <div class="stars"></div>
                                                    <span class="mini-text">(101)</span>
                                                </div>
                                                <h3 class="main-links"><a href="#">Xe Pin NIJIA SWIFT 3 Yên</a></h3>
                                                <div class="price">
                                                    <span class="current">11.500.000đ</span>
                                                    <span class="normal mini-text">13.500.000đ</span>
                                                </div>
                                                <div class="footer">
                                                    <ul class="mini-text">
                                                        <li>Xe điện NIJIA chính hãng</li>
                                                        <li>Bảo hành theo chính sách của hãng</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="load-more flexcenter">
                                        <a href="#" class="secondary-button">Hiển thị thêm</a>
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
</body>
</html>