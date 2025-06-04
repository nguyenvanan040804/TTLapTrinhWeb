package vn.edu.hcmuaf.fit.demo.service.impl;

import vn.edu.hcmuaf.fit.demo.dao.impl.CartDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Product;
import vn.edu.hcmuaf.fit.demo.service.ICartService;

import java.util.List;

public class CartServiceImpl implements ICartService {
    private final CartDaoImpl cartDao = new CartDaoImpl(DBConnect.getConnect());


    @Override
    public void addToCartitem(int userId, int productId) {
        cartDao.insert(userId, productId);
    }

    @Override
    public void removeFromCartitem(int userId, int productId) {
        cartDao.delete(userId, productId);
    }

    @Override
    public List<Product> getCart(int userId) {
        return cartDao.getCartByUser(userId);
    }

    @Override
    public List<Product> getCartByUserId(int userId) {
        return cartDao.getCartByUser(userId);
    }
}
