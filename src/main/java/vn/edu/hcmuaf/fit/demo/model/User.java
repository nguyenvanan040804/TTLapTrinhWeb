package vn.edu.hcmuaf.fit.demo.model;

import java.io.Serializable;
import java.time.LocalDateTime;

public class User implements Serializable {
    private int id;
    private int roleId;
    private String userName;
    private String fullName;
    private String email;
    private String passWord;
    private String phone;
    private String address;
    private int status;
    private String code;
    private String googleId;
    private String picture;

    public User() {
    }

    public User(int id, int roleId, String userName, String fullName, String email, String passWord, String phone, String address, int status, String code) {
        this.id = id;
        this.roleId = roleId;
        this.userName = userName;
        this.fullName = fullName;
        this.email = email;
        this.passWord = passWord;
        this.phone = phone;
        this.address = address;
        this.status = status;
        this.code = code;
    }

    public User(int roleId, String userName, String fullName, String email, String passWord, String phone, String address, int status, String code) {
        this.userName = userName;
        this.email = email;
        this.fullName = fullName;
        this.passWord = passWord;
        this.status = status;
        this.roleId = roleId;
        this.code = code;
        this.phone = phone;
        this.address = address;
    }

    public User(String userName, String fullName, String email, String passWord, String phone, String address, String code) {
        this.userName = userName;
        this.fullName = fullName;
        this.email = email;
        this.passWord = passWord;
        this.phone = phone;
        this.address = address;
        this.code = code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRoleId() {
        return roleId;
    }

    public String getLastName() {
        if (fullName != null && !fullName.isEmpty()) {
            String[] nameParts = fullName.split(" ");
            return nameParts[nameParts.length - 1];
        }
        return "";
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGoogleId() {
        return googleId;
    }

    public void setGoogleId(String googleId) {
        this.googleId = googleId;
    }

    public String getPicture() { return picture; }

    public void setPicture(String picture) { this.picture = picture; }
    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", passWord='" + passWord + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}

