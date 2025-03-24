package vn.edu.hcmuaf.fit.demo.service.impl;

import vn.edu.hcmuaf.fit.demo.dao.IUserDao;
import vn.edu.hcmuaf.fit.demo.dao.impl.UserDaoImpl;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.User;
import vn.edu.hcmuaf.fit.demo.service.IUserService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements IUserService {
    IUserDao userDao = new UserDaoImpl(DBConnect.getConnect());
    @Override
    public boolean register(String userName, String fullName, String email, String passWord, String phone, String address, String code) {
        if(userDao.checkExistEmail(email)) {
            return false;
        }
        if(userDao.checkExistUsername(userName)) {
            return false;
        }
        userDao.insertRegister(new User(2, userName, fullName, email, passWord, phone, address, 0, code));
        return true;
    }

    @Override
    public void updateStatus(User user) {
        userDao.updateStatus(user);
    }

    @Override
    public boolean checkExistEmail(String email) {
        return userDao.checkExistEmail(email);
    }

    @Override
    public boolean checkExistUsername(String userName) {
        return userDao.checkExistUsername(userName);
    }

    @Override
    public User login(String username, String password) {
        User user = this.findOne(username);
        if(user != null && password.equals(user.getPassWord())) {
            return user;
        }
        return null;
    }

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public User findOne(int id) {
        return userDao.findOne(id);
    }

    @Override
    public User findOne(String username) {
        return userDao.findOne(username);
    }

    @Override
    public void insert(User user) {
        userDao.insert(user);
    }

    @Override
    public void update(User user) {
        User oldUser = userDao.findOne(user.getId());
        oldUser.setEmail(user.getEmail());
        oldUser.setUserName(user.getUserName());
        oldUser.setPassWord(user.getPassWord());
        oldUser.setFullName(user.getFullName());
        oldUser.setPhone(user.getPhone());
        oldUser.setAddress(user.getAddress());
        oldUser.setCode(user.getCode());
        oldUser.setStatus(user.getStatus());
        userDao.update(user);
    }

    @Override
    public void delete(int id) {
        userDao.delete(id);
    }

    @Override
    public boolean updatePassword(String username, String newPassword) {
        User user = userDao.findOne(username);
        if (user == null) {
            return false; // Người dùng không tồn tại
        }
        return userDao.updatePassword(username, newPassword);
    }
}
