<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.demo.model.*" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Danh sách xe đạp</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    .container { max-width: 800px; margin: auto; }
    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
    th, td { padding: 10px; border: 1px solid #ddd; text-align: center; }
    th { background-color: #007bff; color: white; }
    img { width: 80px; height: auto; }
    .error { color: red; font-weight: bold; }
  </style>
</head>
<body>

<div class="container">
  <h2>Danh sách xe đạp</h2>

  <%
    List<Product> bikes = (List<Product>) request.getAttribute("bikes");
    if (bikes == null || bikes.isEmpty()) {
  %>
  <p class="error">Không có xe đạp nào!</p>
  <% } else { %>
  <table>
    <tr>
      <th>ID</th>
      <th>Tên</th>
      <th>Giá (VNĐ)</th>
      <th>Hình ảnh</th>
      <th>Số lượng</th>
    </tr>
    <% for (Product bike : bikes) { %>
    <tr>
      <td><%= bike.getId() %></td>
      <td><%= bike.getProName() %></td>
      <td><%= bike.getPrice() %></td>
      <td><img src="<%= bike.getThumb() %>" alt="Ảnh xe đạp"></td>
      <td><%= bike.getQuantity() %></td>
    </tr>
    <% } %>
  </table>
  <% } %>

</div>

</body>
</html>
