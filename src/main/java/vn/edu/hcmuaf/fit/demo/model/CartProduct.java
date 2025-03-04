package vn.edu.hcmuaf.fit.demo.model;

public class CartProduct {
    private int productId;
    private String proName;
    private int price;
    private String img;
    private int quantity;

    public CartProduct(int productId, String proName, int price, String img, int quantity) {
        this.productId = productId;
        this.proName = proName;
        this.price = price;
        this.img = img;
        this.quantity = quantity;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
