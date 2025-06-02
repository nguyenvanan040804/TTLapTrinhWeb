package vn.edu.hcmuaf.fit.demo.service.impl;

import vn.edu.hcmuaf.fit.demo.dao.impl.WishlistDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.IWishlistService;

import java.util.List;

public class WishlistServiceImpl implements IWishlistService {
    private final WishlistDaoImpl wishlistDao = new WishlistDaoImpl(DBConnect.getConnect());

    public void addToWishlist(int userId, int productId) {
        wishlistDao.insert(userId, productId);
    }

    public void removeFromWishlist(int userId, int productId) {
        wishlistDao.delete(userId, productId);
    }

    public List<Product> getWishlist(int userId) {
        return wishlistDao.getWishlistByUser(userId);
    }
    public List<Product> getWishlistByUserId(int userId) {
        return wishlistDao.getWishlistByUser(userId);
    }
}
