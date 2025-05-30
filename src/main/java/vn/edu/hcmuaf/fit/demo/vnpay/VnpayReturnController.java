package vn.edu.hcmuaf.fit.demo.vnpay;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.codec.binary.Hex;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.*;

@WebServlet("/vnpay_return")
public class VnpayReturnController extends HttpServlet {
    private static final String VNP_HASH_SECRET = "8FPNIMCYWMLMHSARSA18WTCIQZOFASWY";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> vnpParams = new HashMap<>();
        for (Map.Entry<String, String[]> entry : request.getParameterMap().entrySet()) {
            vnpParams.put(entry.getKey(), entry.getValue()[0]);
        }

        String vnpSecureHash = vnpParams.remove("vnp_SecureHash");
        vnpParams.remove("vnp_SecureHashType");

        List<String> fieldNames = new ArrayList<>(vnpParams.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();

        for (String fieldName : fieldNames) {
            String encodedKey = URLEncoder.encode(fieldName, StandardCharsets.UTF_8);
            String encodedValue = URLEncoder.encode(vnpParams.get(fieldName), StandardCharsets.UTF_8);
            hashData.append(encodedKey).append("=").append(encodedValue).append("&");
        }
        if (hashData.length() > 0) {
            hashData.setLength(hashData.length() - 1);
        }

        String calculatedHash = hmacSHA512(VNP_HASH_SECRET, hashData.toString());

        String message;
        if (calculatedHash.equals(vnpSecureHash)) {
            if ("00".equals(vnpParams.get("vnp_ResponseCode"))) {
                message = "Giao dịch thành công!";
            } else {
                message = "Giao dịch thất bại!";
            }
        } else {
            message = "Chữ ký không hợp lệ!";
        }

        // Truyền message sang JSP
        request.setAttribute("message", message);

        // Chuyển tiếp đến trang JSP hiển thị kết quả
        request.getRequestDispatcher("/payment_result.jsp").forward(request, response);
    }

    private String hmacSHA512(String key, String data) {
        try {
            Mac sha512Hmac = Mac.getInstance("HmacSHA512");
            SecretKeySpec secretKey = new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), "HmacSHA512");
            sha512Hmac.init(secretKey);
            byte[] hashBytes = sha512Hmac.doFinal(data.getBytes(StandardCharsets.UTF_8));
            return Hex.encodeHexString(hashBytes);
        } catch (Exception e) {
            throw new RuntimeException("Error while hashing", e);
        }
    }
}



