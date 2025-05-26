package vn.edu.hcmuaf.fit.demo.model;

import java.io.Serializable;

public class GoogleUser implements Serializable {
    private String id, name, email, address, picture, passWord;

    public GoogleUser(String id, String name, String email, String address, String picture, String passWord) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
        this.picture = picture;
        this.passWord = passWord;
    }

    public GoogleUser() {

    }

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }

    public String getFullName() {
        return name;
    }
    public void setFullame(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    public String getPicture() {
        return picture;
    }
    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getPassWord() {
        return passWord;
    }
    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }
    @Override
    public String toString() {
        return "GoogleUser{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", avatarUrl='" + picture + '\'' +
                ", passWord='" + passWord + '\'' +
                '}';
    }

    public String getLastName() {
        if (name != null && !name.isEmpty()) {
            String[] nameParts = name.split(" ");
            return nameParts[nameParts.length - 1];
        }
        return "";
    }

}
