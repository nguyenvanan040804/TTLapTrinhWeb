package vn.edu.hcmuaf.fit.demo.dao.impl;

import vn.edu.hcmuaf.fit.demo.dao.OrderDao;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Cart;
import vn.edu.hcmuaf.fit.demo.model.CartProduct;
import vn.edu.hcmuaf.fit.demo.model.OrderItem;
import vn.edu.hcmuaf.fit.demo.model.Order;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class OrderDaoImpl implements OrderDao {

    public List<Order> getAllOrdersByUser(int userId) {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders WHERE userId = ?";
        try (Connection conn = DBConnect.getConnect();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("userId"));
                order.setPaymentId(rs.getInt("paymentId"));
                order.setPromotionId(rs.getInt("promotionId"));
                order.setShippingStatus(rs.getInt("shippingStatus"));
                order.setCreateDate(rs.getTimestamp("createDate"));
                orders.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public List<OrderItem> getOrderItemsWithProductDetails(int orderId) {
        List<OrderItem> list = new ArrayList<>();
        String sql = "SELECT oi.id, oi.orderId, oi.productId, oi.amount, " +
                "p.name AS productName, p.price, pi.imgUrl " +
                "FROM order_item oi " +
                "JOIN products p ON oi.productId = p.id " +
                "LEFT JOIN product_img pi ON p.id = pi.productId " +
                "WHERE oi.orderId = ?";
        try (Connection conn = DBConnect.getConnect();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderItem item = new OrderItem();
                item.setId(rs.getInt("id"));
                item.setOrderId(rs.getInt("orderId"));
                item.setProductId(rs.getInt("productId"));
                item.setAmount(rs.getInt("amount"));
                item.setProductName(rs.getString("productName"));
                item.setPrice(rs.getDouble("price"));
                item.setImg(rs.getString("imgUrl"));
                list.add(item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int createOrder(int userId) {
        int orderId = -1;
        String sql = "INSERT INTO orders (userId, createDate) VALUES (?, NOW())";
        try (Connection conn = DBConnect.getConnect();
             PreparedStatement ps = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
            ps.setInt(1, userId);
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                orderId = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orderId;
    }

    @Override
    public void addOrderItem(int orderId, int productId, int amount) {
        String sql = "INSERT INTO order_item (orderId, productId, amount) VALUES (?, ?, ?)";
        try (Connection conn = DBConnect.getConnect();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, orderId);
            ps.setInt(2, productId);
            ps.setInt(3, amount);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean saveOrder(Order order, Cart cart) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = DBConnect.getConnect();
            conn.setAutoCommit(false);

            // 1. Thêm vào bảng orders
            String sqlOrder = "INSERT INTO orders(userId, paymentId, promotionId, shippingStatus, createDate) VALUES (?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sqlOrder, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getUserId());
            ps.setInt(2, order.getPaymentId());
            ps.setInt(3, order.getPromotionId());
            ps.setInt(4, order.getShippingStatus());
            ps.setTimestamp(5, order.getCreateDate());

            int affected = ps.executeUpdate();
            if (affected == 0) {
                conn.rollback();
                return false;
            }

            rs = ps.getGeneratedKeys();
            if (rs.next()) {
                order.setId(rs.getInt(1));
            } else {
                conn.rollback();
                return false;
            }


            // 2. Thêm vào bảng order_item
            String sqlItem = "INSERT INTO order_item(orderId, productId, amount) VALUES (?, ?, ?, ?)";
            ps = conn.prepareStatement(sqlItem);
            for (Map.Entry<Integer, CartProduct> entry : cart.getItems().entrySet()) {
                CartProduct p = entry.getValue();
                ps.setInt(1, order.getId());        // orderId
                ps.setInt(2, p.getProductId());     // productId
                ps.setInt(3, p.getQuantity());      // amount
                ps.addBatch();
            }
            ps.executeBatch();



            conn.commit();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            try {
                if (conn != null) conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            return false;

//        } finally {
//            DBConnect.close(conn, ps, rs);
//        }
    }

}
}
