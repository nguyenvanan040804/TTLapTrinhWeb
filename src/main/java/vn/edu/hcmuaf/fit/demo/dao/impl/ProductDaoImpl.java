package vn.edu.hcmuaf.fit.demo.dao.impl;

import vn.edu.hcmuaf.fit.demo.dao.IObjectDao;
import vn.edu.hcmuaf.fit.demo.db.DBConnect;
import vn.edu.hcmuaf.fit.demo.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements IObjectDao<Product> {
    Connection conn;

    public ProductDaoImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean add(Product product) {
        String sql = "insert into products (proName, price, description, thumb, quantity, cateId) " +
                "values (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, product.getProName());
            ps.setInt(2, product.getPrice());
            ps.setString(3, product.getDescription());
            ps.setString(4, product.getThumb());
            ps.setInt(5, product.getQuantity());
            ps.setInt(6, product.getCateId());

            return ps.executeUpdate() > 0;
        }catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from products";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Product(
                        rs.getInt("id"),
                        rs.getString("proName"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("thumb"),
                        rs.getInt("quantity"),
                        rs.getInt("cateId")
                ));
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Product getById(int id) {
        String sql = "select * from products where id = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                return new Product(
                        rs.getInt("id"),
                        rs.getString("proName"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("thumb"),
                        rs.getInt("quantity"),
                        rs.getInt("cateId")
                );
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean deleteById(int id) {
        String sql = "delete from products where id = ?";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(Product product) {
        String sql = "UPDATE products SET proName = ?, price = ?, description = ?, thumb = ?, quantity = ?, cateId = ? WHERE id = ?";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, product.getProName());
            ps.setInt(2, product.getPrice());
            ps.setString(3, product.getDescription());
            ps.setString(4, product.getThumb());
            ps.setInt(5, product.getQuantity());
            ps.setInt(6, product.getCateId());
            ps.setInt(7, product.getId());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }



    public List<String> getProductImages(int productId) {
        List<String> images = new ArrayList<>();
        String sql = "select path from product_img where productId = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                images.add(rs.getString("path"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return images;
    }

    public List<Product> getProductsByCategory(int cateId) {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM products WHERE cateId = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, cateId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Product product = new Product(
                        rs.getInt("id"),
                        rs.getString("proName"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("thumb"),
                        rs.getInt("quantity"),
                        rs.getInt("cateId")
                );
                products.add(product);
            }
            System.out.println("DEBUG: Lấy được " + products.size() + " sản phẩm từ DB cho danh mục " + cateId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public List<Product> searchProducts(String keyword) {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM products WHERE proName LIKE ?";

        try (Connection conn = DBConnect.getConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, "%" + keyword + "%");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Product product = new Product(
                        rs.getInt("id"),
                        rs.getString("proName"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("thumb"),
                        rs.getInt("quantity"),
                        rs.getInt("cateId")
                );
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }


    public List<Product> getFilteredProducts(Double minPrice, Double maxPrice, String sort) {
        List<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT * FROM products WHERE 1=1";

            if (minPrice != null) {
                sql += " AND price >= ?";
            }
            if (maxPrice != null) {
                sql += " AND price <= ?";
            }

            // Sắp xếp theo lựa chọn của người dùng
            if ("name".equals(sort)) {
                sql += " ORDER BY proName ASC";
            } else if ("price".equals(sort)) {
                sql += " ORDER BY price ASC";
            } else if ("brand".equals(sort)) {
                sql += " ORDER BY brand ASC"; // nếu không có brand thì nên bỏ dòng này

            }

            PreparedStatement stmt = conn.prepareStatement(sql);
            int index = 1;

            if (minPrice != null) {
                stmt.setDouble(index++, minPrice);
            }
            if (maxPrice != null) {
                stmt.setDouble(index++, maxPrice);
            }

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                products.add(new Product(
                        rs.getInt("id"),
                        rs.getString("proName"),
                        rs.getInt("price"),
                        rs.getString("description"),
                        rs.getString("thumb"),
                        rs.getInt("quantity"),
                        rs.getInt("cateId")
                ));
            }
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
    public Product mapResultSetToProduct(ResultSet rs) throws SQLException {
        return new Product(
                rs.getInt("id"),
                rs.getString("proName"),
                rs.getInt("price"),
                rs.getString("description"),
                rs.getString("thumb"),
                rs.getInt("quantity"),
                rs.getInt("cateId")
        );
    }


    public static void main(String[] args) {
        ProductDaoImpl productDao = new ProductDaoImpl(DBConnect.getConnect());
        System.out.println(productDao.getProductImages(1));
    }
}
