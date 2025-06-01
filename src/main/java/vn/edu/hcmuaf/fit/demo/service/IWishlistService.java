package vn.edu.hcmuaf.fit.demo.service;

import vn.edu.hcmuaf.fit.demo.model.Product;

import java.util.List;

public interface IWishlistService {
    void addToWishlist(int userId, int productId);
    void removeFromWishlist(int userId, int productId);
    List<Product> getWishlist(int userId);
    List<Product> getWishlistByUserId(int userId);
}
