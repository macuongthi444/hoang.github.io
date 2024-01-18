/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Brand;
import Model.Category;
import Model.Color;
import Model.HardwareMemory;
import Model.Option;
import Model.ProductOption;
import Model.RamMemory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
    
    public void insertProductOption(int productId, int brandId, int hardwareMemoryId, int ramMemoryId, int colorId, double price, int numberInStock, int quantitySold){
        String sql = "insert into product_Option values (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, brandId);
            ps.setInt(3, hardwareMemoryId);
            ps.setInt(4, ramMemoryId);
            ps.setInt(5, colorId);
            ps.setDouble(6, price);
            ps.setInt(7, numberInStock);
            ps.setInt(8, quantitySold);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.InsertProduct_Option");
        }
    }
    public List<Object> getProductOptionList(){
//        String sql = "select * From product_option";
        String sql = "select p.productId, p.productName, c.color, hm.hardwareMemory, rm.ramMemory, b.brandName from Brand b, Product_Option po, product p, HardwareMemory hm, RamMemory rm, Color c where po.productId = p.productId and po.hardwareMemoryId = hm.hardwareMemoryId\n" +
"	and po.ramMemoryId = rm.ramMemoryId and po.colorId = c.colorId and po.brandId = b.brandId";
        List<Object> list = new ArrayList();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Object(){
                    public final String name = rs.getString("productName");
                    public final String color = rs.getString("color");
                    public final String hardwareMemory = rs.getString("hardwareMemory");
                    public final String ramMemory = rs.getString("ramMemory");
                    public final String brandName = rs.getString("brandName");
                    @Override
                    public String toString(){
                        return name + " " + color + " " + hardwareMemory;
                    }
                    public String getName(){
                        return name;
                    }
                });
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionList " + e.getMessage());
        }
        return list;
    }
    
    public List<Color> getColorList(){
        String sql = "select * from color";
        List<Color> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Color(rs.getInt("colorId"), rs.getString("color")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getColorList " + e.getMessage());  
        
        } finally{
            if(ps != null)
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }
    
    public List<RamMemory> getRamMemoryList(){
        String sql = "select * from RamMemory";
        List<RamMemory> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new RamMemory(rs.getInt("ramMemoryId"), rs.getString("ramMemory")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getRamMemoryList " + e.getMessage());  
        
        } finally{
            if(ps != null)
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }
    
    public List<HardwareMemory> getHardwareMemoryList(){
//        System.out.println("skjefhjskjfh");
        String sql = "select * from hardwareMemory";
        List<HardwareMemory> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new HardwareMemory(rs.getInt("hardwareMemoryId"), rs.getString("hardwareMemory")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getHardwareMemoryList " + e.getMessage());  
        
        }finally{
            if(ps != null)
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }
    
    public List<Brand> getBrandList(){
        String sql = "select * from brand";
        List<Brand> brandList = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                brandList.add(new Brand(rs.getInt("brandId"), rs.getString("brandName")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getBrandList " + e.getMessage());  
        }finally{
            if(ps != null)
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return brandList;
    }
    
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
            System.out.println("Error at ProductDAO.insertProduct " + e.getMessage());
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
//        System.out.println(ProductDAO.INSTANCE.checkOptionNameIsExist("color"));
//        ProductDAO.INSTANCE.insertProduct(3, "test", 1, null);
        System.out.println(ProductDAO.INSTANCE.getCategoryByName("mouse"));
//        System.out.println(ProductDAO.INSTANCE.getProductOptionId(1, ProductDAO.INSTANCE.getOptionIdByName("color").getOptionId(), "red"));
        ProductDAO.INSTANCE.getBrandList().forEach((e) -> System.out.print(e + " ")); System.out.println("");
        ProductDAO.INSTANCE.getHardwareMemoryList().forEach((e) -> System.out.print(e + " ")); System.out.println("");
        ProductDAO.INSTANCE.getRamMemoryList().forEach((e) -> System.out.print(e + " ")); System.out.println("");
        
        ProductDAO.INSTANCE.getProductOptionList().forEach((e) -> {System.out.println();});
    }
}
