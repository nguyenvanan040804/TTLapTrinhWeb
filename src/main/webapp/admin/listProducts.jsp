<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.demo.model.Product" %>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Danh sách sản phẩm</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    .container { max-width: 800px; margin: auto; }
    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
    th, td { border: 1px solid #ddd; padding: 10px; text-align: center; }
    th { background-color: #007bff; color: white; }
    img { max-width: 100px; height: auto; }
    .back-button { display: inline-block; margin-bottom: 10px; padding: 8px; background-color: #28a745; color: white; text-decoration: none; border-radius: 5px; }
    .back-button:hover { background-color: #218838; }
  </style>
</head>
<body>

<div class="container">
  <a href="admin.jsp" class="back-button">&#8592; Trở lại</a>
  <h2>Danh sách sản phẩm</h2>

  <table>
    <tr>
      <th>ID</th>
      <th>Tên sản phẩm</th>
      <th>Giá (VNĐ)</th>
      <th>Mô tả</th>
      <th>Ảnh</th>
      <th>Số lượng</th>
      <th>Danh mục</th>
      <th>Xóa</th>
    </tr>

    <%
      List<Product> listProducts = (List<Product>) request.getAttribute("listProducts");
      if (listProducts != null && !listProducts.isEmpty()) {
        for (Product product : listProducts) {
    %>
    <tr>
      <td><%= product.getId() %></td>
      <td><%= product.getProName() %></td>
      <td><%= product.getPrice() %></td>
      <td><%= product.getDescription() %></td>
      <td>
        <p><%= product.getThumb() %></p>
        <img src="<%= product.getThumb() %>" alt="Ảnh sản phẩm">
      </td>
      <td><%= product.getQuantity() %></td>
      <td><%= product.getCateId() %></td>
      <td>
        <form action="${pageContext.request.contextPath}/admin/deleteProduct" method="post" onsubmit="return confirm('Bạn có chắc muốn xóa sản phẩm này?');">
          <input type="hidden" name="id" value="<%= product.getId() %>">
          <button type="submit" class="btn btn-danger btn-sm">
            <i class="fas fa-trash-alt"></i> Xóa
          </button>
        </form>
      </td>
    </tr>
    <%
      }
    } else {
    %>
    <tr>
      <td colspan="8">Không có sản phẩm nào.</td>
    </tr>
    <%
      }
    %>
  </table>

</div>

</body>
</html>
