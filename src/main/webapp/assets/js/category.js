// Lấy tất cả checkbox và section
const checkboxes = document.querySelectorAll('input[type="checkbox"]');
const sections = {
    children: document.getElementById('section-children'),
    sporty: document.getElementById('section-sporty'),
    terrain: document.getElementById('section-terrain'),
    racing: document.getElementById('section-racing'),
    tour: document.getElementById('section-tour'),
    elec: document.getElementById('section-elec'),
    school: document.getElementById('section-school'),
};

// Hàm hiển thị section dựa trên trạng thái checkbox
function toggleSection() {
    Object.keys(sections).forEach((key) => {
        const checkbox = document.getElementById(key);
        if (checkbox && checkbox.checked) {
            sections[key].style.display = 'block';
            const span = checkbox.nextElementSibling?.querySelector('span');
            if (span) span.className = 'children';
        } else {
            sections[key].style.display = 'none';
            const span = checkbox?.nextElementSibling?.querySelector('span');
            if (span) span.className = 'checked';
        }
    });
}

// Gắn sự kiện thay đổi cho checkbox
checkboxes.forEach((checkbox) => {
    checkbox.addEventListener('change', (event) => {
        // Đảm bảo chỉ một checkbox được chọn
        if (event.target.checked) {
            checkboxes.forEach((otherCheckbox) => {
                if (otherCheckbox !== event.target) {
                    otherCheckbox.checked = false;
                }
            });
        }
        toggleSection(); // Cập nhật hiển thị
    });
});

// Khi trang tải, kiểm tra trạng thái từ localStorage
document.addEventListener('DOMContentLoaded', () => {
    const selectedCategory = localStorage.getItem('selectedCategory');
    if (selectedCategory && sections[selectedCategory]) {
        const targetCheckbox = document.getElementById(selectedCategory);
        if (targetCheckbox) {
            targetCheckbox.checked = true;
        }
    }
    toggleSection(); // Cập nhật hiển thị ban đầu
});

// Gắn sự kiện cho các liên kết trong menu danh mục
// Lấy tất cả các liên kết có data-id
const categoryLinks = document.querySelectorAll('a[data-id]');

// Lắng nghe sự kiện click trên mỗi liên kết
categoryLinks.forEach((link) => {
    link.addEventListener('click', (event) => {
        event.preventDefault(); // Ngăn cản hành động mặc định của thẻ a (chuyển hướng)

        // Lấy giá trị của data-id từ thẻ a đã click
        const categoryId = link.getAttribute('data-id');
        if (categoryId) {
            // Lưu danh mục đã chọn vào localStorage
            localStorage.setItem('selectedCategory', categoryId);

            // Chuyển hướng đến trang danh mục (hoặc làm việc gì đó tùy mục đích)
            window.location.href = 'pageCategory.jsp';
        }
    });
});
