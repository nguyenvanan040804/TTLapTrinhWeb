package vn.edu.hcmuaf.fit.demo.service;

import vn.edu.hcmuaf.fit.demo.model.User;

import java.util.List;

public interface IUserService {
    boolean register(String userName, String fullName, String email, String passWord, String phone, String address, String code);

    void updateStatus(User user);

    boolean checkExistEmail(String email);

    boolean checkExistUsername(String userName);

    User login(String username, String password);

    List<User> findAll();   // hàm lấy toàn bộ user

    User findOne(int id);   // hàm lấy ra user theo id

    User findOne(String username);  // hàm lấy ra user theo username

    void insert(User user);

    void update(User user);

    void delete(int id);

    boolean updatePassword(String username, String newPassword);
}
