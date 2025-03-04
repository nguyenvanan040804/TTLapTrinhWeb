// js login register forgot password
const forms = document.querySelector(".forms"),
      pwShowHide = document.querySelectorAll(".eye-icon"),
      links = document.querySelectorAll(".link");
      forgotPassLink = document.querySelector(".forgot-pass");

// Xử lý hiển thị mật khẩu
pwShowHide.forEach(eyeIcon => {
    eyeIcon.addEventListener("click", () => {
        let pwFields = eyeIcon.parentElement.parentElement.querySelectorAll(".password");
        
        pwFields.forEach(password => {
            if (password.type === "password") {
                password.type = "text";
                eyeIcon.classList.replace("bx-hide", "bx-show"); // Đổi icon
            } else {
                password.type = "password";
                eyeIcon.classList.replace("bx-show", "bx-hide"); // Đổi lại icon
            }
        });
    });
});

// Chuyển đổi giữa login và signup
// links.forEach(link => {
//     link.addEventListener("click", e => {
//         e.preventDefault(); // Ngăn chặn hành vi mặc định của link
//         if (forms.classList.contains("show-signup")) {
//             forms.classList.remove("show-signup");
//         } else {
//             forms.classList.add("show-signup");
//         }
//     });
// });

// for gotpassword
// Chuyển đổi sang form quên mật khẩu
// forgotPassLink.addEventListener("click", e => {
//     e.preventDefault();
//     forms.classList.add("show-forgot-password");
// });
