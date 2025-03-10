package vn.edu.hcmuaf.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import vn.edu.hcmuaf.fit.demo.dao.impl.*;
import vn.edu.hcmuaf.fit.demo.db.*;
import vn.edu.hcmuaf.fit.demo.model.*;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.Arrays;
import java.util.List;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
        maxFileSize = 1024 * 1024 * 5,        // 5MB
        maxRequestSize = 1024 * 1024 * 10     // 10MB
)
@WebServlet("/admin/addProduct")
public class ProductController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Kết nối database
        Connection conn = DBConnect.getConnect();
        ProductDaoImpl  productDao = new ProductDaoImpl(conn);

        // Lấy dữ liệu từ form
        String proName = request.getParameter("proName");
        String priceStr = request.getParameter("price");
        String description = request.getParameter("description");
        String quantityStr = request.getParameter("quantity");
        String cateIdStr = request.getParameter("cateId");

        // Kiểm tra dữ liệu rỗng
        if (proName == null || proName.trim().isEmpty()) {
            request.setAttribute("error", "Tên sản phẩm không được để trống.");
            request.getRequestDispatcher("addProduct.jsp").forward(request, response);
            return;
        }

        // Kiểm tra giá trị số hợp lệ
        int price, quantity, cateId;
        try {
            price = Integer.parseInt(priceStr);
            quantity = Integer.parseInt(quantityStr);
            cateId = Integer.parseInt(cateIdStr);

            if (price <= 0) throw new NumberFormatException();
            if (quantity < 0) throw new NumberFormatException();
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Giá, số lượng hoặc danh mục phải là số dương.");
            request.getRequestDispatcher("addProduct.jsp").forward(request, response);
            return;
        }

        // Kiểm tra file ảnh
        Part filePart = request.getPart("thumb");
        String fileName = filePart.getSubmittedFileName();
        List<String> allowedExtensions = Arrays.asList("jpg", "jpeg", "png");

        if (fileName == null || fileName.isEmpty()) {
            request.setAttribute("error", "Vui lòng chọn ảnh sản phẩm.");
            request.getRequestDispatcher("addProduct.jsp").forward(request, response);
            return;
        }

        String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1);
        if (!allowedExtensions.contains(fileExt.toLowerCase())) {
            request.setAttribute("error", "Chỉ chấp nhận file .jpg, .jpeg, .png.");
            request.getRequestDispatcher("addProduct.jsp").forward(request, response);
            return;
        }

        // Lưu file ảnh vào thư mục `uploads`
        String uploadPath = getServletContext().getRealPath("") + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);

        // Tạo đối tượng Product
        Product product = new Product(proName, price, description, "uploads/" + fileName, quantity, cateId);

        // Thêm vào database
        if (productDao.add(product)) {
            request.setAttribute("success", "Thêm sản phẩm thành công!");
        } else {
            request.setAttribute("error", "Lỗi khi thêm sản phẩm. Hãy thử lại!");
        }

        // Chuyển về trang thêm sản phẩm
        request.getRequestDispatcher("addProduct.jsp").forward(request, response);
    }
}
