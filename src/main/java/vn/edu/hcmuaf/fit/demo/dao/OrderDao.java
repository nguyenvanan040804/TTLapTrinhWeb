package vn.edu.hcmuaf.fit.demo.dao;

import vn.edu.hcmuaf.fit.demo.model.OrderItem;
import vn.edu.hcmuaf.fit.demo.model.Order;

import java.util.List;

public interface OrderDao {
    List<Order> getAllOrdersByUser(int userId);
    List<OrderItem> getOrderItemsWithProductDetails(int orderId);
    int createOrder(int userId);
    void addOrderItem(int orderId, int productId, int amount);
}
