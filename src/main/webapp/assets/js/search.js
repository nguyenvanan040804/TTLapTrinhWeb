 // chuc nang tim kiem trong trang demo page-category-child
 document.addEventListener("DOMContentLoaded", () => {
    const searchInput = document.getElementById("search");
    const btnSearch = document.getElementById("iconSearch");
    const productList = document.getElementById("productList");
    const productItems = productList.getElementsByClassName("item");

    btnSearch.addEventListener("click", () => {
        const query = searchInput.value.trim().toLowerCase();

        Array.from(productItems).forEach(item => {
            const productName = item.querySelector(".main-links a").textContent.toLowerCase();
            const matches = productName.includes(query);

            if (matches) {
                item.style.display = ""; // hien thi san pham
            } else {
                item.style.display = "none"; // an san pham
            }
        });
    });
});

document.addEventListener("DOMContentLoaded", () => {
    const productList = document.getElementById("productList");
    const products = Array.from(productList.getElementsByClassName("item"));
    const sortOptions = document.getElementById("sortOptions");

    sortOptions.addEventListener("click", (e) => {
        const sortType = e.target.getAttribute("data-sort");
        if (!sortType) return;

        let sortedProducts;

        switch (sortType) {
            case "name":
                sortedProducts = [...products].sort((a, b) => {
                    const nameA = a.querySelector(".main-links a").textContent.trim().toLowerCase();
                    const nameB = b.querySelector(".main-links a").textContent.trim().toLowerCase();
                    return nameA.localeCompare(nameB);
                });
                break;

            case "price":
                sortedProducts = [...products].sort((a, b) => {
                    const priceA = parseFloat(a.querySelector(".price .current").textContent.replace(/[^\d]/g, ""));
                    const priceB = parseFloat(b.querySelector(".price .current").textContent.replace(/[^\d]/g, ""));
                    return priceA - priceB;
                });
                break;

            case "default":
                sortedProducts = products; // Giữ thứ tự ban đầu
                break;

        }

        // Xóa các sản phẩm hiện tại và nối thêm các sản phẩm đã sắp xếp
        productList.innerHTML = "";
        sortedProducts.forEach(product => productList.appendChild(product));
    });
});