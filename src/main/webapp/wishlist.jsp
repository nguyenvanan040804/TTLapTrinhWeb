<%@ page import="vn.edu.hcmuaf.fit.demo.model.Product" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yêu thích</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,400&display=swap"
            rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/accessory.css">
    <link rel="stylesheet" href="assets/css/whishlist.css">
</head>
<body>
<jsp:include page="templates/header.jsp" />
    <h2>Danh sách yêu thích</h2>
<p>Wishlist size: ${fn:length(wishlist)}</p>

    <c:choose>
        <c:when test="${empty wishlist}">
            <p>Bạn chưa thêm sản phẩm nào vào danh sách yêu thích.</p>
        </c:when>
    </c:choose>
<c:if test="${not empty wishlist}">
    <div class="wishlist-container">
        <c:forEach var="product" items="${wishlist}">
            <div class="wishlist-item">
                <div class="wishlist-image">
                    <img src="${productImageMap[product]}" alt="${product.proName}" style="max-width:150px; max-height:150px;"/>
                </div>
                <div class="wishlist-info">
                    <h3>${product.proName}</h3>
                    <p>Giá: <f:formatNumber value="${product.price}" type="currency" currencySymbol="" /> đ</p>
                    <a href="wishlist?action=remove&pid=${product.id}" class="remove-btn">Xoá khỏi yêu thích</a>
                </div>
            </div>
        </c:forEach>
    </div>
</c:if>



<jsp:include page="templates/footer.jsp" />

</body>
</html>


