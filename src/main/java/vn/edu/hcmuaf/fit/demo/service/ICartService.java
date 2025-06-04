package vn.edu.hcmuaf.fit.demo.service;

import vn.edu.hcmuaf.fit.demo.model.Product;

import java.util.List;

public interface ICartService {
    void addToCartitem(int userId, int productId);
    void removeFromCartitem(int userId, int productId);
    List<Product> getCart(int userId);
    List<Product> getCartByUserId(int userId);
}
