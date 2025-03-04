package vn.edu.hcmuaf.fit.demo.dao;

import vn.edu.hcmuaf.fit.demo.model.User;

import java.util.List;

public interface IUserDao {

    void insertRegister(User user);

    void updateStatus(User user);       // hàm dùng active tài khoản

    boolean checkExistEmail(String email);

    boolean checkExistUsername(String username);

    List<User> findAll();    // hàm lấy toàn bộ các user

    User findOne(int id); // hàm lấy 1 user theo id

    User findOne(String username);  // hàm lây 1 user theo username

    void insert(User user);     // thêm dữ liệu mới cho user

    void update(User user);     // cập nhật 1 đối tượng user

    void delete(int id);      // xóa 1 đoi tượng user

}
