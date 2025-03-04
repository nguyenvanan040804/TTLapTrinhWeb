// Lấy phần tử nút "Hiển thị thêm"
const loadMoreButton = document.querySelector(".load-button");

// Lấy phần tử chứa các nút phân trang
const paginationButtonsContainer = document.querySelector(".pagination-buttons");

// Thêm sự kiện click vào nút "Hiển thị thêm"
loadMoreButton.addEventListener("click", function (event) {
    event.preventDefault(); // Ngăn chặn hành vi mặc định của thẻ <a>

    // Hiển thị container chứa các nút phân trang
    paginationButtonsContainer.style.display = "block";

    // Ẩn nút "Hiển thị thêm"
    loadMoreButton.style.display = "none";
});


// Dữ liệu sản phẩm
const products = [
    {
        name: "Xe Đạp Trẻ Em JsXiong 2301 Hiphop 12 Inch",
        price: 1450000,
        priceNor:1550000,
        imgSrc: "assets/img/kid-1.jpg",
        discount: 6,
        vote: 725,
        des:"Thiết kế nữ tính và màu sắc tươi sáng, thu hút các bé gái",
        des1:"Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối",
    },
    {
        name: "Xe Đạp Trẻ Em Xaming Nữ 2 Gióng 14 Inch",
        price: 4599000,
        priceNor:4899990,
        imgSrc: "assets/img/kid-2.jpg",
        discount: 13,
        vote: 825,
        des:"Thiết kế nữ tính và màu sắc tươi sáng, thu hút các bé gái",
        des1:"Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối",
    },
    {
        name: "Xe Đạp Trẻ Em Bé Trai Hector Polo 12 Inch",
        price: 1450000,
        priceNor: 1890000,
        imgSrc: "assets/img/kid3.jpg",
        discount: 23,
        vote: 1601,
        des: "Thiết kế năng động, sử dụng các hình ảnh đáng yêu phù hợp các bé gái",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Gái Shukyo S1 12 Inch",
        price: 990000,
        priceNor: 1200000,
        imgSrc: "assets/img/kid-4.jpg",
        discount: 18,
        vote: 1011,
        des: "Thiết kế thoải mái, nữ tính phù hợp dành cho các bé gái",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Trai Shukyo K2 14 Inch",
        price: 1050000,
        priceNor: 1260000,
        imgSrc: "assets/img/kid-5.jpg",
        discount: 17,
        vote: 1711,
        des: "Thiết kế năng động, màu sắc nổi bật phù hợp cho các bé trai",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Cho Bé Gái JsXiong 2305 12 Inch",
        price: 1550000,
        priceNor: 1680000,
        imgSrc: "assets/img/kid-6.jpg",
        discount: 25,
        vote: 1355,
        des: "Xe Đạp Cho Bé Gái JsXiong 2305 12 Inch được thiết kế xinh xắn, phù hợp cho bé gái 3 tuổi.",
        des1: "Ghi đông thép nhẹ và tay cầm cao su mềm giúp bé điều khiển dễ dàng"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Gái Melody 14 Inch",
        price: 1390000,
        priceNor: 1890000,
        imgSrc: "assets/img/kid-7.jpg",
        discount: 26,
        vote: 1001,
        des: "Thiết kế ấn tượng, phù hợp sở thích các bé gái",
        des1: "Khung sườn chắc chắn, thẩm mỹ, an toàn"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Gái Xaming Mini 20 Inch",
        price: 1850000,
        priceNor: 1950000,
        imgSrc: "assets/img/kid-8.jpg",
        discount: 6,
        vote: 744,
        des: "Thiết kế nữ tính phù hợp với các bé gái",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Trẻ Em JsXiong 2301 Hiphop 12 Inch",
        price: 1450000,
        priceNor:1550000,
        imgSrc: "assets/img/kid-1.jpg",
        discount: 6,
        vote: 725,
        des:"Thiết kế nữ tính và màu sắc tươi sáng, thu hút các bé gái",
        des1:"Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối",
    },
    {
        name: "Xe Đạp Trẻ Em Xaming Nữ 2 Gióng 14 Inch",
        price: 4599000,
        priceNor:4899990,
        imgSrc: "assets/img/kid-2.jpg",
        discount: 13,
        vote: 825,
        des:"Thiết kế nữ tính và màu sắc tươi sáng, thu hút các bé gái",
        des1:"Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối",
    },
    {
        name: "Xe Đạp Trẻ Em Bé Trai Hector Polo 12 Inch",
        price: 1450000,
        priceNor: 1890000,
        imgSrc: "assets/img/kid3.jpg",
        discount: 23,
        vote: 1601,
        des: "Thiết kế năng động, sử dụng các hình ảnh đáng yêu phù hợp các bé gái",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Gái Shukyo S1 12 Inch",
        price: 990000,
        priceNor: 1200000,
        imgSrc: "assets/img/kid-4.jpg",
        discount: 18,
        vote: 1011,
        des: "Thiết kế thoải mái, nữ tính phù hợp dành cho các bé gái",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Trai Shukyo K2 14 Inch",
        price: 1050000,
        priceNor: 1260000,
        imgSrc: "assets/img/kid-5.jpg",
        discount: 17,
        vote: 1711,
        des: "Thiết kế năng động, màu sắc nổi bật phù hợp cho các bé trai",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Cho Bé Gái JsXiong 2305 12 Inch",
        price: 1550000,
        priceNor: 1680000,
        imgSrc: "assets/img/kid-6.jpg",
        discount: 25,
        vote: 1355,
        des: "Xe Đạp Cho Bé Gái JsXiong 2305 12 Inch được thiết kế xinh xắn, phù hợp cho bé gái 3 tuổi.",
        des1: "Ghi đông thép nhẹ và tay cầm cao su mềm giúp bé điều khiển dễ dàng"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Gái Melody 14 Inch",
        price: 1390000,
        priceNor: 1890000,
        imgSrc: "assets/img/kid-7.jpg",
        discount: 26,
        vote: 1001,
        des: "Thiết kế ấn tượng, phù hợp sở thích các bé gái",
        des1: "Khung sườn chắc chắn, thẩm mỹ, an toàn"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Gái Xaming Mini 20 Inch",
        price: 1850000,
        priceNor: 1950000,
        imgSrc: "assets/img/kid-8.jpg",
        discount: 6,
        vote: 744,
        des: "Thiết kế nữ tính phù hợp với các bé gái",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Trẻ Em JsXiong 2301 Hiphop 12 Inch",
        price: 1450000,
        priceNor:1550000,
        imgSrc: "assets/img/kid-1.jpg",
        discount: 6,
        vote: 725,
        des:"Thiết kế nữ tính và màu sắc tươi sáng, thu hút các bé gái",
        des1:"Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối",
    },
    {
        name: "Xe Đạp Trẻ Em Xaming Nữ 2 Gióng 14 Inch",
        price: 4599000,
        priceNor:4899990,
        imgSrc: "assets/img/kid-2.jpg",
        discount: 13,
        vote: 825,
        des:"Thiết kế nữ tính và màu sắc tươi sáng, thu hút các bé gái",
        des1:"Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối",
    },
    {
        name: "Xe Đạp Trẻ Em Bé Trai Hector Polo 12 Inch",
        price: 1450000,
        priceNor: 1890000,
        imgSrc: "assets/img/kid3.jpg",
        discount: 23,
        vote: 1601,
        des: "Thiết kế năng động, sử dụng các hình ảnh đáng yêu phù hợp các bé gái",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Gái Shukyo S1 12 Inch",
        price: 990000,
        priceNor: 1200000,
        imgSrc: "assets/img/kid-4.jpg",
        discount: 18,
        vote: 1011,
        des: "Thiết kế thoải mái, nữ tính phù hợp dành cho các bé gái",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Trai Shukyo K2 14 Inch",
        price: 1050000,
        priceNor: 1260000,
        imgSrc: "assets/img/kid-5.jpg",
        discount: 17,
        vote: 1711,
        des: "Thiết kế năng động, màu sắc nổi bật phù hợp cho các bé trai",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    },
    {
        name: "Xe Đạp Cho Bé Gái JsXiong 2305 12 Inch",
        price: 1550000,
        priceNor: 1680000,
        imgSrc: "assets/img/kid-6.jpg",
        discount: 25,
        vote: 1355,
        des: "Xe Đạp Cho Bé Gái JsXiong 2305 12 Inch được thiết kế xinh xắn, phù hợp cho bé gái 3 tuổi.",
        des1: "Ghi đông thép nhẹ và tay cầm cao su mềm giúp bé điều khiển dễ dàng"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Gái Melody 14 Inch",
        price: 1390000,
        priceNor: 1890000,
        imgSrc: "assets/img/kid-7.jpg",
        discount: 26,
        vote: 1001,
        des: "Thiết kế ấn tượng, phù hợp sở thích các bé gái",
        des1: "Khung sườn chắc chắn, thẩm mỹ, an toàn"
    },
    {
        name: "Xe Đạp Trẻ Em Bé Gái Xaming Mini 20 Inch",
        price: 1850000,
        priceNor: 1950000,
        imgSrc: "assets/img/kid-8.jpg",
        discount: 6,
        vote: 744,
        des: "Thiết kế nữ tính phù hợp với các bé gái",
        des1: "Khung sườn thiết kế chắc chắn, thẩm mỹ, an toàn tuyệt đối"
    }
    // Thêm các sản phẩm khác...
  ];
  
  // Biến toàn cục
  let currentPage = 1;
  const itemsPerPage = 9; // Số sản phẩm hiển thị trên mỗi trang
  
  // Hàm hiển thị sản phẩm
  function displayProducts(productsToDisplay) {
    const container = document.getElementById("productList");
    container.innerHTML = ''; // Xóa hết sản phẩm cũ
  
    productsToDisplay.forEach(product => {
      const productHTML = `
        <div class="item">
          <div class="media">
            <div class="thumbnail object-cover">
              <a href="#">
                <img src="${product.imgSrc}" alt="">
              </a>
            </div>
            <div class="hoverable">
                <ul>
                    <li class="active"><a href="#"><i class="ri-heart-line"></i></a></li>
                    <li><a href=""><i class="ri-eye-line"></i></a></li>
                    <li><a href=""><i class="ri-shuffle-line"></i></a></li>
                </ul>
            </div>
            <div class="discount circle flexcenter"><span>${product.discount}%</span></div>
          </div>
          <div class="content">
            <div class="rating">
                <div class="stars"></div>
                <span class="mini-text">(${product.vote})</span>
            </div>
            <h3 class="main-links"><a href="#">${product.name}</a></h3>
            <div class="price">
              <span class="current">${product.price.toLocaleString()}đ</span>
              <span class="normal mini-text">${product.priceNor.toLocaleString()}</span>
            </div>
          </div>
        </div>
      `;
      container.innerHTML += productHTML;
    });
  }
  
  // Hàm phân trang
  function paginateProducts() {
    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    const productsToDisplay = products.slice(startIndex, endIndex);
    
    displayProducts(productsToDisplay);
  }
  
  // Xử lý sự kiện khi nhấn vào nút phân trang
  document.querySelectorAll(".pagination-btn").forEach(button => {
    button.addEventListener("click", (event) => {
      currentPage = parseInt(event.target.dataset.page); // Lấy trang từ data-page
      paginateProducts(); // Hiển thị sản phẩm của trang đó
    });
  });
  
  // Hiển thị trang đầu tiên khi load trang
  paginateProducts();
  
