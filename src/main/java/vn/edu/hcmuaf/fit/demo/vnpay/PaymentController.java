package vn.edu.hcmuaf.fit.demo.vnpay;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.demo.model.Cart;
import org.apache.commons.codec.binary.Hex;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.*;


@WebServlet("/payment")
public class PaymentController extends HttpServlet {
    private static final String VNP_URL = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
    private static final String VNP_TMN_CODE = "4SA5TVRY";
    private static final String VNP_HASH_SECRET = "8FPNIMCYWMLMHSARSA18WTCIQZOFASWY";
    private static final String RETURN_URL = "http://35.77.213.212:8080/Project_LT_Web-1.0-SNAPSHOT/vnpay_return";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null || cart.getItems().isEmpty()) {
            response.sendRedirect("cart.jsp?error=Giỏ hàng trống");
            return;
        }

        String orderId = String.valueOf(System.currentTimeMillis());

        long amount = Math.round(cart.calculateTotalPrice() * 100);


        Map<String, String> vnpParams = new HashMap<>();
        vnpParams.put("vnp_Version", "2.1.0");
        vnpParams.put("vnp_Command", "pay");
        vnpParams.put("vnp_TmnCode", VNP_TMN_CODE);
        vnpParams.put("vnp_Amount", String.valueOf(amount));
        vnpParams.put("vnp_CurrCode", "VND");
        vnpParams.put("vnp_TxnRef", orderId);
        vnpParams.put("vnp_OrderInfo", "Thanh toán đơn hàng #" + orderId);
        vnpParams.put("vnp_Locale", "vn");
        vnpParams.put("vnp_ReturnUrl", RETURN_URL);
        vnpParams.put("vnp_IpAddr", request.getRemoteAddr());
        vnpParams.put("vnp_CreateDate", new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
        vnpParams.put("vnp_OrderType", "other"); // hoặc: "billpayment", "topup", "fashion", v.v.

        // Sắp xếp và build chuỗi dữ liệu
        List<String> fieldNames = new ArrayList<>(vnpParams.keySet());
        Collections.sort(fieldNames);

        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();

        for (String field : fieldNames) {
            String value = vnpParams.get(field);
            String encodedKey = URLEncoder.encode(field, StandardCharsets.UTF_8);
            String encodedValue = URLEncoder.encode(value, StandardCharsets.UTF_8);
            hashData.append(encodedKey).append("=").append(encodedValue).append("&");
            query.append(encodedKey).append("=").append(encodedValue).append("&");
        }


        hashData.setLength(hashData.length() - 1);
        query.setLength(query.length() - 1);

        String secureHash = hmacSHA512(VNP_HASH_SECRET, hashData.toString());

        System.out.println("HashData: " + hashData.toString());
        System.out.println("SecureHash: " + secureHash);

        query.append("&").append(URLEncoder.encode("vnp_SecureHash", StandardCharsets.UTF_8))
                .append("=")
                .append(URLEncoder.encode(secureHash, StandardCharsets.UTF_8));

        response.sendRedirect(VNP_URL + "?" + query.toString());
    }

    private String hmacSHA512(String key, String data) {
        try {
            Mac sha512Hmac = Mac.getInstance("HmacSHA512");
            SecretKeySpec secretKey = new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), "HmacSHA512");
            sha512Hmac.init(secretKey);
            byte[] hashBytes = sha512Hmac.doFinal(data.getBytes(StandardCharsets.UTF_8));
            return Hex.encodeHexString(hashBytes);
        } catch (Exception e) {
            throw new RuntimeException("Lỗi khi tạo HMAC SHA512", e);
        }
    }
}




