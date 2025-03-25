<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Objects" %>
<%@ page import="vn.edu.hcmuaf.fit.demo.dao.impl.CategoryDaoImpl" %>
<%@ page import="vn.edu.hcmuaf.fit.demo.db.DBConnect" %>
<%@ page import="vn.edu.hcmuaf.fit.demo.model.Category" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Thêm sản phẩm</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    .container { max-width: 500px; margin: auto; position: relative; }
    .back-button { position: absolute; top: 10px; left: 10px; background-color: #007bff; color: white; padding: 5px 10px; border: none; border-radius: 5px; cursor: pointer; text-decoration: none; display: inline-block; }
    .back-button:hover { background-color: #0056b3; }
    form { display: flex; flex-direction: column; gap: 10px; }
    label { font-weight: bold; }
    input, textarea, select { width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 5px; }
    .error { color: red; font-weight: bold; }
    .success { color: green; font-weight: bold; }
    button { background-color: #28a745; color: white; padding: 10px; border: none; border-radius: 5px; cursor: pointer; }
    button:hover { background-color: #218838; }
  </style>
</head>
<body>

<div class="container">
  <a href="admin.jsp" class="back-button" style="margin-left: -300px">&#8592; Trở lại</a>
  <h2>Thêm sản phẩm</h2>

  <!-- Hiển thị thông báo lỗi hoặc thành công -->
  <% if (request.getAttribute("error") != null) { %>
  <p class="error"><%= request.getAttribute("error") %></p>
  <% } %>
  <% if (request.getAttribute("success") != null) { %>
  <p class="success"><%= request.getAttribute("success") %></p>
  <% } %>

  <%
    // Lấy danh sách danh mục từ database
    CategoryDaoImpl categoryDao = new CategoryDaoImpl(DBConnect.getConnect());
    List<Category> categories = categoryDao.getAll();
  %>

  <form action="addProduct" method="post" enctype="multipart/form-data">
    <label for="proName">Tên sản phẩm:</label>
    <input type="text" id="proName" name="proName" required>

    <label for="price">Giá sản phẩm (VNĐ):</label>
    <input type="number" id="price" name="price" min="1" required>

    <label for="description">Mô tả:</label>
    <textarea id="description" name="description" rows="3"></textarea>

    <label for="quantity">Số lượng:</label>
    <input type="number" id="quantity" name="quantity" min="0" required>

    <label for="cateId">Danh mục:</label>
    <select id="cateId" name="cateId" required>
      <% for (Category category : categories) { %>
      <option value="<%= category.getId() %>"><%= category.getCateName() %></option>
      <% } %>
    </select

    <label for="thumb">Ảnh sản phẩm:</label>
    <input type="file" id="thumb" name="thumb" accept=".jpg,.jpeg,.png" required>



    <button type="submit">Thêm sản phẩm</button>
  </form>
</div>

</body>
</html>
