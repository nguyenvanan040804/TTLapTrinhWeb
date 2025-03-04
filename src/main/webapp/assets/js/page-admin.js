// Hiển thị thông tin khách hàng
document.querySelector('.customer-info').addEventListener('click', function (event) {
    console.log('Đã nhấn vào Thông tin KH');
    event.preventDefault();

    // Ẩn Dashboard
    document.querySelector('.page-header').style.display = 'none';
    document.querySelector('.page-content').style.display = 'none';

    // Hiển thị thông tin KH
    document.querySelector('.page-header-customer').style.display = 'block';
    document.querySelector('.page-content-customer').style.display = 'block';

    // Ẩn Thêm sản phẩm
    document.querySelector('.wrapper').style.display = 'none';
});
 
// Hiển thị Dashboard
document.querySelector('.dashboard').addEventListener('click', function (event) {
    console.log('Đã nhấn vào Dashboard');
    event.preventDefault();

    // Ẩn Thông tin KH
    document.querySelector('.page-header-customer').style.display = 'none';
    document.querySelector('.page-content-customer').style.display = 'none';

    // Hiển thị Dashboard
    document.querySelector('.page-header').style.display = 'block';
    document.querySelector('.page-content').style.display = 'block';

    // Ẩn Thêm sản phẩm
    document.querySelector('.wrapper').style.display = 'none';
});

// Hiển thị Thêm sản phẩm
document.querySelector('.add-product').addEventListener('click', function (event) {
    console.log('Đã nhấn vào Thêm sản phẩm');
    event.preventDefault();

    // Ẩn Thông tin KH
    document.querySelector('.page-header-customer').style.display = 'none';
    document.querySelector('.page-content-customer').style.display = 'none';

    // Ẩn Dashboard
    document.querySelector('.page-header').style.display = 'none';
    document.querySelector('.page-content').style.display = 'none';

    // Hiển thị Thêm sản phẩm
    document.querySelector('.wrapper').style.display = 'block';
});


// Lấy tất cả các thẻ <a> trong menu
const menuLinks = document.querySelectorAll('.side-menu a');

// Thêm sự kiện click cho từng liên kết
menuLinks.forEach(link => {
    link.addEventListener('click', function (event) {
        // Ngăn hành vi mặc định của thẻ <a>
        event.preventDefault();

        // Loại bỏ lớp 'active' khỏi tất cả các liên kết
        menuLinks.forEach(link => link.classList.remove('active'));

        // Thêm lớp 'active' cho liên kết được nhấn
        this.classList.add('active');
    });
});
