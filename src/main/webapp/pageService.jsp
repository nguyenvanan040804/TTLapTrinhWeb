<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dịch vụ</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400&display=swap"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div id="page" class="site page-category">

        <jsp:include page="templates/header.jsp" />

        <main>
            <div class="container-main">
                <div class="container-service">
                    <div class="banner-ser">
                        <img src="assets/img/banner-bao-duong.jpg" alt="">
                    </div>
                </div>
                <div class="container-info">
                    <div class="container-block">
                        <p>Ngày nay việc tìm 1 cửa hàng sửa chữa xe đạp không phải dễ dàng. Là chuỗi cửa hàng bán lẻ xe đạp lớn nhất cả nước, BikeStore với đội ngũ kỹ thuật lâu năm, nhiều kinh nghiệm, hiện cung cấp tất cả (Full) dịch vụ dành cho xe đạp, đặc biệt các dòng xe đạp thể thao: Bảo dưỡng bảo trì xe đạp, Lắp ráp, Build xe mới, Sửa chữa, Thay thế, Nâng cấp phụ tùng xe đạp.</p>
                        
                        <p>Quý khách có nhu cầu sử dụng một trong các dịch vụ trên vui lòng liên hệ và mang xe đến các Showroom trực thuộc tại Hồ Chí Minh, Hà Nội, Đà Nẵng, Bình Dương, Đồng Nai, Tây Ninh, Bà Rịa, Bình Định, Quảng Ngãi, Quảng Nam với hơn 50 cửa hàng</p>
                        <p>Dịch vụ sửa xe tận nhà phục vụ tận nhà cho khách hàng từ Thứ 2 đến Chủ nhật</p>
                        <strong>Liên hệ ngay hotline: 1111 1111 ( 8h30 – 17h30 )</strong>
                        <h1>BẢNG GIÁ FULL GÓI DỊCH VỤ</h1>
                        <p>Tùy vào hiện trạng chiếc xe đạp của Quý khách như thế nào để chọn Gói bảo dưỡng xe đạp thích hợp, Khi mang tới shop hoặc liên hệ dịch vụ sửa xe tận nhà sẽ có nhân viên kỹ thuật tư vấn cụ thể, dưới đây là bảng chi tiết các gói bảo dưỡng, chăm sóc xe đạp, Quý khách tham khảo để chọn gói phù hợp</p>
                        <div class="img-price">
                            <img src="assets/img/bang-gia.jpg" alt="">
                        </div>
                        <u>Một số lưu ý</u>
                        <p>1. Nếu Quý khách không thể mang xe tận shop để thực hiện bảo dưỡng sửa chữa, BikeStore sẽ gọi dịch vụ SỬA CHỮA TẬN NHÀ phí dịch vụ chỉ 50.000VNĐ (chưa tính phí sửa chữa của xe đạp). Chi phí cụ thể sẽ được BikeStore thông báo trước.</p>
                        <p>2. Giá dịch vụ trên là tiền công thực hiện, chưa bao gồm VAT và các chi phí liên quan khác.</p>
                        <div class="img-commit">
                            <img src="assets/img/anh-cam-ket.jpg" alt="">
                        </div>

                    </div>
                </div>
               
            </div>

        </main>
        <!-- main -->

        <jsp:include page="templates/footer.jsp" />

    </div>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.3.1/index.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/category.js"></script>
    <script src="./assets/js/script.js"></script>
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