package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import vn.edu.hcmuaf.fit.demo.dao.impl.CategoryDaoImpl;
import vn.edu.hcmuaf.fit.demo.dao.impl.ProductDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Category;
import vn.edu.hcmuaf.fit.demo.model.Product;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
        maxFileSize = 1024 * 1024 * 5,        // 5MB
        maxRequestSize = 1024 * 1024 * 10     // 10MB
)
@WebServlet("/admin/addProduct")
public class ProductController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = DBConnect.getConnect();
        ProductDaoImpl productDao = new ProductDaoImpl(conn);
        CategoryDaoImpl categoryDao = new CategoryDaoImpl(conn);


        // Lấy danh sách danh mục từ database
        List<Category> categories = categoryDao.getAll();
        request.setAttribute("categories", categories);


        // Lấy dữ liệu từ form
        String proName = request.getParameter("proName");
        String priceStr = request.getParameter("price");
        String description = request.getParameter("description");
        String quantityStr = request.getParameter("quantity");
        String cateIdStr = request.getParameter("cateId");

        // Kiểm tra giá trị số hợp lệ
        int price, quantity, cateId;
        try {
            price = Integer.parseInt(priceStr);
            quantity = Integer.parseInt(quantityStr);
            cateId = Integer.parseInt(cateIdStr);
            if (price <= 0 || quantity < 0) throw new NumberFormatException();
        } catch (NumberFormatException e) {
//            request.setAttribute("error", "Giá, số lượng hoặc danh mục phải là số dương.");
            request.setAttribute("error", "Vui lòng chọn danh mục hợp lệ.");
            request.getRequestDispatcher("addProduct.jsp").forward(request, response);
            return;
        }

        // Xử lý file ảnh
        Part filePart = request.getPart("thumb");
        String fileName = filePart.getSubmittedFileName();
        if (fileName == null || fileName.isEmpty()) {
            request.setAttribute("error", "Vui lòng chọn ảnh sản phẩm.");
            request.getRequestDispatcher("addProduct.jsp").forward(request, response);
            return;
        }

        // Lưu file vào thư mục `assets/img/`
        String uploadPath = getServletContext().getRealPath("/") + "assets/img/";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs(); // Tạo thư mục nếu chưa có

        String filePath = uploadPath + fileName;
        filePart.write(filePath);

        // Lưu đường dẫn vào DB với định dạng `assets/img/filename.jpg`
        String imgPath = "assets/img/" + fileName;

        // Tạo đối tượng Product và thêm vào database
        Product product = new Product(proName, price, description, imgPath, quantity, cateId);
        if (productDao.add(product)) {
            request.setAttribute("success", "Thêm sản phẩm thành công!");
        } else {
            request.setAttribute("error", "Lỗi khi thêm sản phẩm. Hãy thử lại!");
        }

        request.getRequestDispatcher("addProduct.jsp").forward(request, response);
    }
}


