package vn.edu.hcmuaf.fit.demo.model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private Map<Integer, CartProduct> items = new HashMap<>();

    public void addProduct(CartProduct product) {
        if(items.containsKey(product.getProductId())) {
            CartProduct existPro = items.get(product.getProductId());
            existPro.setQuantity(existPro.getQuantity() + product.getQuantity());
        }else {
            items.put(product.getProductId(), product);
        }
    }

    public void updateProduct(int productId, int quantity) {
        if(items.containsKey(productId)) {
            CartProduct product = items.get(productId);
            product.setQuantity(quantity);
        }
    }

    public void removeProduct(int productId) {
        items.remove(productId);
    }

    public Map<Integer, CartProduct> getItems() {
        return items;
    }

    public int getTotalQuantity() {
        int totalQuantity = 0;
        for (CartProduct product : items.values()) {
            totalQuantity += product.getQuantity();
        }
        return totalQuantity;
    }

    public double calculateTotalPrice() {
        double totalPrice = 0.0;
        for (CartProduct product : items.values()) {
            totalPrice += product.getPrice() * product.getQuantity();
        }
        return totalPrice;
    }
}
