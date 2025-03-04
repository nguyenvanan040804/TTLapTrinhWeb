package vn.edu.hcmuaf.fit.demo.model;

import java.time.LocalDateTime;

public class Product {
    private int id;
    private String proName;
    private int price;
    private String description;
    private String thumb;
    private int quantity;
    private LocalDateTime createAt;
    private int cateId;

    public Product() {

    }

    public Product(int id, String proName, int price, String description, String thumb, int quantity, int cateId) {
        this.id = id;
        this.proName = proName;
        this.price = price;
        this.description = description;
        this.thumb = thumb;
        this.quantity = quantity;
        this.cateId = cateId;
    }

    public Product(String proName, int price, String description, String thumb, int quantity, int cateId) {
        this.proName = proName;
        this.price = price;
        this.description = description;
        this.thumb = thumb;
        this.quantity = quantity;
        this.cateId = cateId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getThumb() {
        return thumb;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setThumb(String thumb) {
        this.thumb = thumb;
    }

    public int getCateId() {
        return cateId;
    }

    public void setCateId(int cateId) {
        this.cateId = cateId;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", proName='" + proName + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", thumb='" + thumb + '\'' +
                ", quantity'" + quantity + '\'' +
                ", cateId=" + cateId +
                '}';
    }
}