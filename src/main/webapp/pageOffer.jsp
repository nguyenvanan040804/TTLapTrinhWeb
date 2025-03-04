<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ưu đãi</title>
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
                                <li><a href="#">Trang chủ</a></li>
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
                                                <span class="discount">3%<br>OFF</span>
                                            </div>
                                            <div class="big-image">
                                                <div class="big-image-wrapper swiper-wrapper">
                                                    <div class="image-show swiper-slide">
                                                        <a data-fslightbox href="assets/img/details_product_1.jpg"><img src="assets/img/details_product_1.jpg" alt=""></a>
                                                    </div>
                                                    <div class="image-show swiper-slide">
                                                        <a data-fslightbox href="assets/img/detail_product-2.jpg"><img src="assets/img/detail_product-2.jpg" alt=""></a>
                                                    </div>
                                                    <div class="image-show swiper-slide">
                                                        <a data-fslightbox href="assets/img/detail_product-3.jpg"><img src="assets/img/detail_product-3.jpg" alt=""></a>
                                                    </div>
                                                    <div class="image-show swiper-slide">
                                                        <a data-fslightbox href="assets/img/detail_product-4.jpg"><img src="assets/img/detail_product-4.jpg" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="swiper-button-next"></div>
                                                <div class="swiper-button-prev"></div>
                                            </div>

                                            <div thumbSlider="" class="small-image">
                                                <ul class="small-image-wrapper flexitem swiper-wrapper">
                                                    <li class="thumbnail-show swiper-slide">
                                                        <img src="assets/img/details_product_1.jpg" alt="">
                                                    </li>
                                                    <li class="thumbnail-show swiper-slide">
                                                        <img src="assets/img/detail_product-2.jpg" alt="">
                                                    </li>
                                                    <li class="thumbnail-show swiper-slide">
                                                        <img src="assets/img/detail_product-3.jpg" alt="">
                                                    </li>
                                                    <li class="thumbnail-show swiper-slide">
                                                        <img src="assets/img/detail_product-4.jpg" alt="">
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">   
                                        <div class="item">
                                            <h1>Xe Đạp Đua Sava Ex7 – Khung Nhôm | Càng Carbon | Shimano 105</h1>
                                            <div class="content">
                                                <div class="rating">
                                                    <div class="stars"></div>
                                                    <a href="#" class="mini-text">2,548 đánh giá</a>
                                                    <a href="#" class="add-review mini-text">Thêm đánh giá</a>
                                                </div>
                                                <div class="stock-sku">
                                                    <span class="available">Còn hàng</span>
                                                    <span class="sku mini-text">savaex7</span>
                                                </div>
                                                <div class="price">
                                                    <span class="current">19.490.000đ</span>
                                                    <span class="normal">20.000.000đ</span>
                                                </div>
                                                <!-- <div class="colors">
                                                    <p>Màu: </p>
                                                    <div class="variant">
                                                        <form action="">
                                                            <P>
                                                                <input type="radio" name="color" id="cogrey">
                                                                <label for="cogrey" class="circle"></label>
                                                            </P>
                                                            <P>
                                                                <input type="radio" name="color" id="cowhite">
                                                                <label for="cowhite" class="circle"></label>
                                                            </P>
                                                            <P>
                                                                <input type="radio" name="color" id="cogreen">
                                                                <label for="cogreen" class="circle"></label>
                                                            </P>
                                                            <P>
                                                                <input type="radio" name="color" id="cored">
                                                                <label for="cored" class="circle"></label>
                                                            </P>
                                                        </form>
                                                    </div>
                                                </div> -->

                                                <div class="stock mini-text" data-stock="4000">
                                                    <div class="qty">
                                                        <span>Sold: <strong class="qty-sold">3459</strong></span>
                                                        <span>Stock: <strong class="qty-available">107</strong></span>
                                                    </div>
                                                    <div class="bar">
                                                        <div class="available"></div>
                                                    </div>
                                                </div>
                                                <div class="offer">
                                                    <p>Offer ends at</p>
                                                    <ul class="flexcenter">
                                                        <li>1</li>
                                                        <li>15</li>
                                                        <li>27</li>
                                                        <li>07</li>
                                                    </ul>
                                                </div>

                                                <div class="actions">
                                                    <div class="qty-control flexitem">
                                                        <button class="minus circle">-</button>
                                                        <input type="text" value="1">
                                                        <button class="plus circle">+</button>
                                                    </div>
                                                    <div class="button-cart">
                                                        <button class="primary-button"><i class="ri-shopping-cart-line"></i><span>Thêm vào giỏ hàng</span></button>
                                                    </div>
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
                                                        <li class="has-child expand">
                                                            <a href="#0" class="icon-small">Thông tin</a>
                                                            <ul class="content">
                                                                <li><span>Hãng</span><span>SaVa</span></li>
                                                                <li><span>Loại xe</span><span>Xe đua</span></li>
                                                                <li><span>Khung</span><span>Hợp kim nhôm</span></li>
                                                                <li><span>Tải trọng</span><span>90kg</span></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-child">
                                                            <a href="#0" class="icon-small">Mô tả</a>
                                                            <div class="content">
                                                                <span><i class="ri-git-commit-fill"></i> Xe Đạp Đua Sava EX7 là một thiết kế dành cho những người yêu thích tốc độ và thể thao. Mục tiêu mang lại trải nghiệm đạp xe tối ưu và đạt được tốc độ mong muốn. Xe Đạp Đua Sava EX7, kết hợp giữa hiệu suất cao và khả năng di thay đổi tốc độ linh hoạt.</span>
                                                                <span><i class="ri-git-commit-fill"></i> Chiếc xe đạp đua này trang bị khung xe làm từ hợp kim nhôm cao cấp và phuộc làm từ carbon. Sự kết hợp hoàn hảo giúp giảm trọng lượng xe đạp xuống chỉ còn khoảng 11kg.</span>
                                                                <span><i class="ri-git-commit-fill"></i> Xe Đạp Đua Sava EX7 sử dụng hệ thống truyền động Shimano 105, thay đổi tốc độ linh hoạt lên đến 24 tốc độ. Tay đề Shimano 105 R7120 đến từ Nhật Bản với 2×12 tốc độ. Khả năng điều khiển mượt mà, chính xác mà bất kỳ tay đua nào cũng mong đợi.</span>
                                                            </div>
                                                        </li>
                                                        <li class="has-child">
                                                            <a href="#0" class="icon-small">Thông số kĩ thuật</a>
                                                            <div class="content">
                                                                <table>
                                                                    <tr>
                                                                        <th>SKU</th>
                                                                        <td>savaex7</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Màu sắc</th>
                                                                        <td>Bạc, Đỏ đen, Ghi đen, Đen Trắng, Xanh</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Khung sườn</th>
                                                                        <td>Hợp kim nhôm siêu nhẹ, Dây âm sườn</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Càng/Phuộc xe</th>
                                                                        <td>Carbon Toray T800</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Ghi đông</th>
                                                                        <td>Hợp kim Nhôm</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Pô tăng/cổ xe</th>
                                                                        <td>Hợp kim Nhôm</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Hệ thống phanh</th>
                                                                        <td>Phanh đĩa dầu Shimano 105 R7170</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Đùm xe</th>
                                                                        <td>Hợp kim nhôm, Bạc đạn</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Vành xe</th>
                                                                        <td>Hợp kim nhôm 2 lớp cao 4cm</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Lốp xe</th>
                                                                        <td>CST RECOURSE 700x28C</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Tay đề</th>
                                                                        <td>Tay đề lắc Shimano 105 R7120 Japan (2 đĩa, 12 líp)</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Tăng tốc trước (Gạt đĩa)</th>
                                                                        <td>Shimano 105 R7100 Japan</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Tăng tốc sau (Gạt líp)</th>
                                                                        <td>Shimano 105 R7100 Japan</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Đùi đĩa</th>
                                                                        <td>SENICX PR1 - Trục rỗng</td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </li>
                                                        <li class="has-child more">
                                                            <a href="#0" class="icon-small">Ưu đãi thêm</a>
                                                            <div class="content">
                                                                <span><i class="ri-check-line"></i>Mua xe đạp về tặng ngay voucher 100.000đ.</span>
                                                                <span><i class="ri-check-line"></i>Liện hệ B2B Sale để có chính sách Giá Sỉ tốt nhất thị trường</span>
                                                                <span><i class="ri-check-line"></i>Tặng thêm phiếu mua hàng Xe điện, Phụ kiện.</span>
                                                            </div>
                                                        </li>
                                                        <li class="has-child expand">
                                                            <a href="#" class="icon-small">Đánh giá<span class="mini-text">2.5k</span></a>
                                                            <div class="content">
                                                                <div class="reviews">
                                                                    <h4>Đánh giá của khách</h4>
                                                                    <div class="review-block">
                                                                        <div class="review-block-head">
                                                                            <div class="flexitem">
                                                                                <span class="rate-sum">4.9</span>
                                                                                <span>2,548 bài đánh giá</span>
                                                                            </div>
                                                                            <a href="#review-form" class="secondary-button">Viết đánh giá</a>
                                                                        </div>
                                                                        <div class="review-block-body">
                                                                            <ul>
                                                                                <li class="item">
                                                                                    <div class="review-form">
                                                                                        <p class="person">Đánh giá của Nguyễn</p>
                                                                                        <p class="mini-text">_ 7/7/22</p>
                                                                                    </div>
                                                                                    <div class="review-rating rating">
                                                                                        <div class="stars"></div>
                                                                                    </div>
                                                                                    <div class="review-title">
                                                                                        <p>Sản phẩm tốt</p>
                                                                                    </div>
                                                                                    <div class="review-text">
                                                                                        <p>Chiếc xe đạp màu đỏ đen tôi mua tại BikeShop rất đẹp , qua tìm hiểu và cũng như được shop giới thiệu tôi rất tin tưởng shop và đã đặt 100% số tiền cho shop . Shop đã phục vụ rất tận tình,  chu đáo gửi hàng cho tôi rất nhanh và chuyện nghiệp khuyến tôi rất hài lòng về shop</p>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="item">
                                                                                    <div class="review-form">
                                                                                        <p class="person">Đánh giá của Phạm</p>
                                                                                        <p class="mini-text">_ 10/9/23</p>
                                                                                    </div>
                                                                                    <div class="review-rating rating">
                                                                                        <div class="stars"></div>
                                                                                    </div>
                                                                                    <div class="review-title">
                                                                                        <p>Sản phẩm đẹp!</p>
                                                                                    </div>
                                                                                    <div class="review-text">
                                                                                        <p>Xe đi rất ổn định , kiểu dáng màu sắc thì quá đẹp mà thời gian giao hàng lại rất kịp thời khiến tôi rất hài lòng về chất lượng phụ vụ và độ uy tín của shop . Tôi cũng khuyên những bạn chạy xe đạp và yêu thích xe đạp hãy tới BikeShop để sở hữu được những chiếc xe đạp tốt và chất lượng</p>
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                            <div class="second-links">
                                                                                <a href="#" class="view-all">Xem tất cả đánh giá<i class="ri-arrow-right-line"></i></a>
                                                                            </div>
                                                                        </div>
                                                                        <div id="review-rorm" class="review-form">
                                                                            <h4>Viết đánh giá</h4>
                                                                            <div class="rating">
                                                                                <p>Bạn có hài lòng không?</p>
                                                                            </div>
                                                                            <form action="">
                                                                                <p>
                                                                                    <label>Họ tên</label>
                                                                                    <input type="text">
                                                                                </p>
                                                                                <p>
                                                                                    <label>Tóm tắt</label>
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
            <!-- sản phâm chính -->

            <div class="related-products">
                <div class="container">
                    <div class="wrapper">
                        <div class="sectop flexitem">
                            <h2><span class="circle"></span><span>Có thể bạn thích</span></h2>
                            <div class="second-links">
                                <a href="#" class="view-all">Xem tất cả
                                    <i class="ri-arrow-right-line"></i>
                                </a>
                            </div>
                        </div>
                        <div class="column">
                            <div class="products main flexwrap">
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/Xe-Dap-Fixed-Gear-Life-Horse-Fx2.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="discount circle flexcenter"><span>16%</span></div>
                                    </div>
                                    <div class="content">
                                        <div class="offer flexitem">
                                            <p class="mini-text">Offer ends at</p>
                                            <ul class="flexcenter">
                                                <li>0</li>
                                                <li>17</li>
                                                <li>28</li>
                                                <li>01</li>
                                            </ul>
                                        </div>
                                        <div class="rating">
                                            <div class="stars"></div>
                                            <span class="mini-text">(1,955)</span>
                                        </div>
                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Life Horse Fx2 – Khung Nhôm | Phanh Vành | Giá Rẻ</a></h3>
                                        <div class="price">
                                            <span class="current">5.500.000đ</span>
                                            <span class="normal mini-text">6.555.000đ</span>
                                        </div>
                                        <div class="stock mini-text" data-stock="4000">
                                            <div class="qty">
                                                <span>Sold: <strong class="qty-sold">529</strong></span>
                                                <span>Stock: <strong class="qty-available">37</strong></span>
                                            </div>
                                            <div class="bar">
                                                <div class="available"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/Xe-Dap-Fixed-Gear-Life-Fix735-700C.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="discount circle flexcenter"><span>7%</span></div>
                                    </div>
                                    <div class="content">
                                        <div class="offer flexitem">
                                            <p class="mini-text">Offer ends at</p>
                                            <ul class="flexcenter">
                                                <li>1</li>
                                                <li>10</li>
                                                <li>09</li>
                                                <li>22</li>
                                            </ul>
                                        </div>
                                        <div class="rating">
                                            <div class="stars"></div>
                                            <span class="mini-text">(362)</span>
                                        </div>
                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Life Fix735 700C Giá Rẻ | Khuyến mãi Hot</a></h3>
                                        <div class="price">
                                            <span class="current">3.740.000đ</span>
                                            <span class="normal mini-text">4.000.000đ</span>
                                        </div>
                                        <div class="stock mini-text" data-stock="4000">
                                            <div class="qty">
                                                <span>Sold: <strong class="qty-sold">259</strong></span>
                                                <span>Stock: <strong class="qty-available">10</strong></span>
                                            </div>
                                            <div class="bar">
                                                <div class="available"></div>
                                            </div>
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
                                        <div class="discount circle flexcenter"><span>5%</span></div>
                                    </div>
                                    <div class="content">
                                        <div class="offer flexitem">
                                            <p class="mini-text">Offer ends at</p>
                                            <ul class="flexcenter">
                                                <li>1</li>
                                                <li>18</li>
                                                <li>02</li>
                                                <li>09</li>
                                            </ul>
                                        </div>
                                        <div class="rating">
                                            <div class="stars"></div>
                                            <span class="mini-text">(231)</span>
                                        </div>
                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Funky Locking Nhật Bản</a></h3>
                                        <div class="price">
                                            <span class="current">7.590.000đ</span>
                                            <span class="normal mini-text">7.990.000đ</span>
                                        </div>
                                        <div class="stock mini-text" data-stock="4000">
                                            <div class="qty">
                                                <span>Sold: <strong class="qty-sold">929</strong></span>
                                                <span>Stock: <strong class="qty-available">107</strong></span>
                                            </div>
                                            <div class="bar">
                                                <div class="available"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/xe-dap-fix-gear-khong-thang-brave-will.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="discount circle flexcenter"><span>2%</span></div>
                                    </div>
                                    <div class="content">
                                        <div class="offer flexitem">
                                            <p class="mini-text">Offer ends at</p>
                                            <ul class="flexcenter">
                                                <li>2</li>
                                                <li>12</li>
                                                <li>00</li>
                                                <li>02</li>
                                            </ul>
                                        </div>
                                        <div class="rating">
                                            <div class="stars"></div>
                                            <span class="mini-text">(713)</span>
                                        </div>
                                        <h3 class="main-links"><a href="#">Xe Đạp Fixed Gear Không Thắng Brave Will</a></h3>
                                        <div class="price">
                                            <span class="current">4.590.000đ</span>
                                            <span class="normal mini-text">4.690.000đ</span>
                                        </div>
                                        <div class="stock mini-text" data-stock="4000">
                                            <div class="qty">
                                                <span>Sold: <strong class="qty-sold">1129</strong></span>
                                                <span>Stock: <strong class="qty-available">92</strong></span>
                                            </div>
                                            <div class="bar">
                                                <div class="available"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/feature-product-5.jpg" alt="">
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
                                        <div class="offer flexitem">
                                            <p class="mini-text">Offer ends at</p>
                                            <ul class="flexcenter">
                                                <li>1</li>
                                                <li>20</li>
                                                <li>22</li>
                                                <li>10</li>
                                            </ul>
                                        </div>
                                        <div class="rating">
                                            <div class="stars"></div>
                                            <span class="mini-text">(225)</span>
                                        </div>
                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình MTB Kurashi Kon 26 Inch Giá Rẻ</a></h3>
                                        <div class="price">
                                            <span class="current">3.790.000đ</span>
                                            <span class="normal mini-text">4.190.000đ</span>
                                        </div>
                                        <div class="stock mini-text" data-stock="4000">
                                            <div class="qty">
                                                <span>Sold: <strong class="qty-sold">239</strong></span>
                                                <span>Stock: <strong class="qty-available">7</strong></span>
                                            </div>
                                            <div class="bar">
                                                <div class="available"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/feature-products-7.jpg" alt="">
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
                                        <div class="offer flexitem">
                                            <p class="mini-text">Offer ends at</p>
                                            <ul class="flexcenter">
                                                <li>1</li>
                                                <li>09</li>
                                                <li>33</li>
                                                <li>11</li>
                                            </ul>
                                        </div>
                                        <div class="rating">
                                            <div class="stars"></div>
                                            <span class="mini-text">(1,022)</span>
                                        </div>
                                        <h3 class="main-links"><a href="#">Xe Đạp Touring Life Fly – Khung Nhôm | Phanh Đĩa | Ltwoo R7</a></h3>
                                        <div class="price">
                                            <span class="current">8.090.000đ</span>
                                            <span class="normal mini-text">10.350.000đ</span>
                                        </div>
                                        <div class="stock mini-text" data-stock="4000">
                                            <div class="qty">
                                                <span>Sold: <strong class="qty-sold">1239</strong></span>
                                                <span>Stock: <strong class="qty-available">227</strong></span>
                                            </div>
                                            <div class="bar">
                                                <div class="available"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/xe-dap-dia-hinh-giant-atx-720-2021.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="discount circle flexcenter"><span>2%</span></div>
                                    </div>
                                    <div class="content">
                                        <div class="offer flexitem">
                                            <p class="mini-text">Offer ends at</p>
                                            <ul class="flexcenter">
                                                <li>1</li>
                                                <li>01</li>
                                                <li>44</li>
                                                <li>42</li>
                                            </ul>
                                        </div>
                                        <div class="rating">
                                            <div class="stars"></div>
                                            <span class="mini-text">(355)</span>
                                        </div>
                                        <h3 class="main-links"><a href="#">Xe Đạp Địa Hình Giant ATX 720-2021 Giá Rẻ</a></h3>
                                        <div class="price">
                                            <span class="current">10.750.000đ</span>
                                            <span class="normal mini-text">10.990.000đ</span>
                                        </div>
                                        <div class="stock mini-text" data-stock="4000">
                                            <div class="qty">
                                                <span>Sold: <strong class="qty-sold">429</strong></span>
                                                <span>Stock: <strong class="qty-available">38</strong></span>
                                            </div>
                                            <div class="bar">
                                                <div class="available"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="media">
                                        <div class="thumbnail object-cover">
                                            <a href="#">
                                                <img src="assets/img/Xe-Dap-Touring-Twitter-R12-Tay-Ngang.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="hoverable">
                                            <ul>
                                                <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                                                <li><a href=""><i class="ri-eye-line"></i></a></li>
                                                <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="discount circle flexcenter"><span>13%</span></div>
                                    </div>
                                    <div class="content">
                                        <div class="offer flexitem">
                                            <p class="mini-text">Offer ends at</p>
                                            <ul class="flexcenter">
                                                <li>1</li>
                                                <li>31</li>
                                                <li>24</li>
                                                <li>18</li>
                                            </ul>
                                        </div>
                                        <div class="rating">
                                            <div class="stars"></div>
                                            <span class="mini-text">(425)</span>
                                        </div>
                                        <h3 class="main-links"><a href="#">Xe Đạp Touring Twtter R12 Tay Ngang Giá Rẻ Khuyến Mãi Hot</a></h3>
                                        <div class="price">
                                            <span class="current">15.900.000đ</span>
                                            <span class="normal mini-text">18.290.000đ</span>
                                        </div>
                                        <div class="stock mini-text" data-stock="4000">
                                            <div class="qty">
                                                <span>Sold: <strong class="qty-sold">939</strong></span>
                                                <span>Stock: <strong class="qty-available">31</strong></span>
                                            </div>
                                            <div class="bar">
                                                <div class="available"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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

    </div>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.3.1/index.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/category.js"></script>
</body>
</html>