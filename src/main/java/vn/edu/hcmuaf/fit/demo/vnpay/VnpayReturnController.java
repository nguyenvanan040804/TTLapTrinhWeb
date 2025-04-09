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
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.*;


@WebServlet("/vnpay_return")
public class VnpayReturnController extends HttpServlet {
    private static final String VNP_HASH_SECRET = "YOUR_HASH_SECRET";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> vnpParams = new HashMap<>();
        for (Map.Entry<String, String[]> entry : request.getParameterMap().entrySet()) {
            vnpParams.put(entry.getKey(), entry.getValue()[0]);
        }

        String vnpSecureHash = vnpParams.remove("vnp_SecureHash");
        List<String> fieldNames = new ArrayList<>(vnpParams.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();

        for (String fieldName : fieldNames) {
            hashData.append(fieldName).append("=").append(vnpParams.get(fieldName)).append("&");
        }
        hashData.setLength(hashData.length() - 1);

        String calculatedHash = hmacSHA512(VNP_HASH_SECRET, hashData.toString());

        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");

        if (calculatedHash.equals(vnpSecureHash)) {
            if ("00".equals(vnpParams.get("vnp_ResponseCode"))) {
                out.println("<h3>Giao dịch thành công!</h3>");
            } else {
                out.println("<h3>Giao dịch thất bại!</h3>");
            }
        } else {
            out.println("<h3>Chữ ký không hợp lệ!</h3>");
        }
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


