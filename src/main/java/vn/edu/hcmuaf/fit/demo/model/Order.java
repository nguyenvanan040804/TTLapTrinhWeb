package vn.edu.hcmuaf.fit.demo.model;


import java.sql.Timestamp;
import java.util.Date;

public class Order {
    private int id;
    private int userId;
    private int paymentId;
    private int promotionId;
    private int shippingStatus;
    private Date createDate;

    // Getters & Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    public int getPromotionId() {
        return promotionId;
    }

    public void setPromotionId(int promotionId) {
        this.promotionId = promotionId;
    }

    public int getShippingStatus() {
        return shippingStatus;
    }

    public void setShippingStatus(int shippingStatus) {
        this.shippingStatus = shippingStatus;
    }

    public Timestamp getCreateDate() {
        return (Timestamp) createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
