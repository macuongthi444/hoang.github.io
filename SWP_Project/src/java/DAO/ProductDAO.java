/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Category;
import Model.Option;
import Model.ProductOption;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class ProductDAO extends  DBContext{
    public static final ProductDAO INSTANCE = new ProductDAO();
    private static PreparedStatement ps = null;
    private static ResultSet rs = null;
    
    public Option getOptionIdByName(String optionName){
        String sql = "select * from [Option] where optionName = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, optionName);
            rs = ps.executeQuery();
            if(rs.next()){
                return new Option(rs.getInt("optionId"), rs.getString("optionName"));
            }
        } catch (SQLException e) {
            System.out.println("Error at productDAO.getOptionIdByName " + e.getMessage() );
        }
        return null;
    }
    
    public int getProductOptionId(int productId, int optionId, String optionDetail){
        String sql = "select * from product_option where productId = ? and optionId = ? and optionDetail = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, optionId);
            ps.setString(3, optionDetail);
            rs = ps.executeQuery();
            if(rs.next())
                return rs.getInt("productOptionId");
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getProductOptionId ");
        }
        return -1;
    }
    
    public int getProductOptionId(int productId, String optionDetail){
        String sql = "select * from product_option where productId = ? and optionDetail = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setString(2, optionDetail);
            rs = ps.executeQuery();
            if(rs.next())
                return rs.getInt("productOptionId");
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getProductOptionId ");
        }
        return -1;
    }
    
    
    
    public void insertProduct(int id, String productName, int categoryId, Integer couponId){
        String sql = "insert into Product values(?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, productName);
            ps.setInt(3, categoryId);
            if(couponId == null){
                ps.setNull(4, java.sql.Types.INTEGER);
            }else{
                ps.setInt(4, couponId);
            }
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.insertProduct");
        }
    }
    
    public void insertOption(String optionName){
        String sql = "insert into [option] values (?) ";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, optionName);
            ps.execute();
        } catch (SQLException e) {
            status = "Error at ProductDAO.insertOption " + e.getMessage();
            System.out.println(status);
        } finally{
            if(ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    public void insertProductOption(int productId, int optionId, String optionDetail, double price, int numberInStock, int quantitySold){
        String sql = "insert into [product_option] values (?, ?, ?, ?, ?, ?) ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, optionId);
            ps.setString(3, optionDetail);
            ps.setDouble(4, price);
            ps.setInt(5, numberInStock);
            ps.setInt(6, quantitySold);
            ps.execute();
        } catch (SQLException e) {
            status = "Error at ProductDAO.insertProductOption " + e.getMessage();
            System.out.println(status);
        }
    }
    
    public void insertProductOption(int productId, String optionDetail, double price, int numberInStock, int quantitySold){
        String sql = "insert into [product_option] values (?, ?, ?, ?, ?, ?) ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setString(2, optionDetail);
            ps.setDouble(3, price);
            ps.setInt(4, numberInStock);
            ps.setInt(5, quantitySold);
            ps.execute();
        } catch (SQLException e) {
            status = "Error at ProductDAO.insertProductOption " + e.getMessage();
            System.out.println(status);
        }
    }
    
    public Category getCategoryByName(String categoryName){
        String sql = "select * from category where categoryName = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, categoryName);
            rs = ps.executeQuery();
            if(rs.next()){
                return new Category(rs.getInt("categoryId"), categoryName);
            }
        } catch (SQLException e) {
        } finally{
            if(ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }
    
    public int getProductQuantitySold(int productId, int optionId, String optionDetail){
        String sql = "";
        return 0;
    }
    
    public int getProductQuantitySold(int productId, String optionDetail){
        String sql = "";
        return 0;
    }
    
    public int getProductNumberInStock(){
        return 0;
    }
    
    public boolean checkOptionNameIsExist(String optionName){
        String sql = "select * from [option] where optionName = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, optionName);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error at checkoutOptionnameIsExist " + e.getMessage());
        }
        return false;
    }
    
    public void insertImage(String imageText, int productOptionId){
        String sql = "insert into Image values(?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, imageText);
            ps.setInt(2, productOptionId);
            ps.executeUpdate();
        } catch (SQLException e) {
            status = "Error at productDAO.insertImage " + e.getMessage();
            System.out.println(status);
        }
        
    }
//    public ProductOption getProductOption(){
//    }
    
    public static void main(String[] args) {
        System.out.println(ProductDAO.INSTANCE.checkOptionNameIsExist("color"));
        ProductDAO.INSTANCE.insertProduct(3, "test", 1, null);
        System.out.println(ProductDAO.INSTANCE.getCategoryByName("mouse"));
        System.out.println(ProductDAO.INSTANCE.getProductOptionId(1, ProductDAO.INSTANCE.getOptionIdByName("color").getOptionId(), "red"));
    }
}
