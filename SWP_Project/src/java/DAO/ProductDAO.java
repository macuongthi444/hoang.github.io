/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Brand;
import Model.Category;
import Model.Color;
import Model.Coupon;
import Model.GraphicCard;
import Model.HardwareMemory;
import Model.Image;
import Model.Option;
import Model.Product;
import Model.ProductOption;
import Model.ProductWithImage;
import Model.RamMemory;
import Model.Resolution;
import Model.ScreenSize;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;
import java.util.List;
import java.util.logging.Level;

import DAO.CouponDAO;
import Model.ProductWithOption;
import java.util.Map;

/**
 *
 * @author nguye
 */
public class ProductDAO extends DBContext {

    public static final ProductDAO INSTANCE = new ProductDAO();

//    public void updateImage(int imageId, String imageText, int productOptionId){
//        
//    }
    public List<ProductWithOption> getProductWithOptionById(int id) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "Select * from Product_Option \n"
                + "po join GraphicCard gc on po.graphicCardId = gc.graphicCardId\n"
                + "join Color c on c.colorId = po.colorId join\n"
                + "HardwareMemory h on h.hardwareMemoryId=po.hardwareMemoryId\n"
                + "join RamMemory r on r.ramMemoryId = po.ramMemoryId \n"
                + "join ScreenSize s on s.screenSizeId=po.screenSizeId\n"
                + "join Resolution re on re.resolutionId=po.resolutionId \n"
                + "where productId =  " + id;

        try {
            List<ProductWithOption> list = new ArrayList<>();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                ProductWithOption option = new ProductWithOption();
                option.setProductOptionId(rs.getInt("productOptionId"));
                option.setCard(new GraphicCard(rs.getInt("graphicCardId"), rs.getString("graphicCard")));
                option.setColor(new Color(0, rs.getString("color")));
                option.setHardware(new HardwareMemory(0, rs.getString("hardwareMemory")));
                option.setSize(new ScreenSize(0, rs.getString("screenSize")));
                option.setRam(new RamMemory(0, rs.getString("ramMemory")));
                option.setResolution(new Resolution(0, rs.getString("resolution")));
                option.setPrice(rs.getDouble("price"));
                list.add(option);
            }
            return list;
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionList " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }

    public void updateProductOptionQuantity(int productOptionId, int quantity) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "update product_Option set quantity = ? where productOptionId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setInt(2, productOptionId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at updateProductOptionQuantity " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }

//    public List<ProductOption> getProductOptionListAfterSearching(String sql, HashMap<String, List<String>> searchMap){
//        return null;
//    }
    public List<ProductOption> getProductOptionListAfterSearching(String sql, List<String> searchValue) {
        List<ProductOption> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            PreparedStatement pst = connection.prepareStatement(sql);
            for (int i = 0; i < searchValue.size(); i++) {
                String value = searchValue.get(i);
                pst.setString(i + 1, value);
                System.out.println(value);
            }
            rs = pst.executeQuery();
            while (rs.next()) {
                list.add(new ProductOption(rs.getInt("productOptionId"), rs.getInt("productId"), rs.getInt("hardwareMemoryId"),
                        rs.getInt("ramMemoryId"), rs.getInt("colorId"), rs.getInt("screensizeId"), rs.getInt("resolutionId"), rs.getInt("graphicCardId"),
                        rs.getDouble("price"), rs.getInt("numberInStock"), rs.getInt("quantitySold")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionListAfterSearching " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public boolean checkProductOptionIsExist(int productId, int hardwareMemoryId, int ramMemoryId, int colorId, int screenSizeId, int resolutionId, int graphicCardId) {
        String sql = "select * from product_Option where productId = ? and hardwareMemoryId = ? and ramMemoryId = ? and colorId = ? and "
                + "screenSizeId = ? and resolutionid = ? and graphicCardId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, hardwareMemoryId);
            ps.setInt(3, ramMemoryId);
            ps.setInt(4, colorId);
            ps.setInt(5, screenSizeId);
            ps.setInt(6, resolutionId);
            ps.setInt(7, graphicCardId);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error at checkProductOptionIsExist " + e.getMessage());
            return true;
        } finally {
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return false;
    }

    public void deleteImageByProductOptionId(int productOptionId) {
        String sql = "delete from [Image] where product_optionId = ?";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productOptionId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at deleteImageByProductOptionId " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public Product getProductById(int productId) {
        String sql = "select * from product where productId = ?";
        PreparedStatement ps = null;
        ResultSet rst = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            rst = ps.executeQuery();
            if (rst.next()) {
                return new Product(rst.getInt("productId"), rst.getString("productName"), getBrandById(rst.getInt("brandId")), rst.getString("productDetail"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductById " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rst != null) try {
                rst.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public void deleteProductOption(int productOptionid) {
        String sql = "delete from product_option where productOptionid = ?";
        PreparedStatement ps = null;

        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productOptionid);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at deleteProductOption " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void deleteProduct(int productId) {
        String sql = "delete from product where productId = ?";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at deleteProduct " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void deleteImage(int imageId) {
        String sql = "delete from [image] where imageId = ?";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, imageId);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error at deleteImage " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void updateProduct(int productId, String productName, int brandId, String productDetail) {
        String sql = "update product set productName = ?, brandId = ?, productDetail = ? where productId = ?";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, productName);
            ps.setInt(2, brandId);
            ps.setString(3, productDetail);
            ps.setInt(4, productId);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error at updateProduct " + e.getMessage());
        } finally {
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    public void updateProductOption(int productOptionId, int productId, int hardwareMemoryId, int ramMemoryId, int colorId, int screenSizeId, int resolutionId, int graphicCardId, double price, int numberInStock, int quantitySold) {
        String sql = "update product_option set hardwareMemoryId = ?, ramMemoryId = ?, colorId = ?, screenSizeId = ?, resolutionId = ?, graphicCardId = ?, "
                + "price = ?, numberInStock = ?, quantitySold = ? where productOptionId = ? and productId = ?";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, hardwareMemoryId);
            ps.setInt(2, ramMemoryId);
            ps.setInt(3, colorId);
            ps.setInt(4, screenSizeId);
            ps.setInt(5, resolutionId);
            ps.setInt(6, graphicCardId);
            ps.setDouble(7, price);
            ps.setInt(8, numberInStock);
            ps.setInt(9, quantitySold);
            ps.setInt(10, productOptionId);
            ps.setInt(11, productId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at updateProductOption " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public ProductOption getProductOptionById(int id) {
        String sql = "select * from product_option where productOptionid = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new ProductOption(rs.getInt("productOptionId"), rs.getInt("productId"), rs.getInt("hardwareMemoryId"), rs.getInt("ramMemoryId"),
                        rs.getInt("colorId"), rs.getInt("screensizeId"), rs.getInt("resolutionId"), rs.getInt("graphicCardId"), rs.getDouble("price"),
                        rs.getInt("numberInStock"), rs.getInt("quantitySold"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionById");
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null)try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return null;
    }

    public List<Image> getImagesByProductOptionId(int productOptionId) {
        String sql = "select * from [image] where product_optionId = ?";
        List<Image> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productOptionId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Image(rs.getInt("imageId"), rs.getString("imageText"), rs.getInt("product_optionId")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getImagesByProductOptionId " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public void insertProductOption(int productId, int hardwareMemoryId, int ramMemoryId, int colorId, int screenSizeId,
            int resolutionId, int graphicCardId, double price, int numberInStock, int quantitySold) {
        String sql = "insert into product_Option values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, hardwareMemoryId);
            ps.setInt(3, ramMemoryId);
            ps.setInt(4, colorId);
            ps.setInt(5, screenSizeId);
            ps.setInt(6, resolutionId);
            ps.setInt(7, graphicCardId);
            ps.setDouble(8, price);
            ps.setInt(9, numberInStock);
            ps.setInt(10, quantitySold);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertProductOption " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public List<ProductOption> getProductOptionByProductId(int productId) {
        String sql = "select * from product_option where productId = ?";
        List<ProductOption> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductOption(rs.getInt("productOptionId"), rs.getInt("productId"), rs.getInt("hardwareMemoryId"), rs.getInt("ramMemoryId"),
                        rs.getInt("colorId"), rs.getInt("screensizeId"), rs.getInt("resolutionId"), rs.getInt("graphicCardId"), rs.getDouble("price"),
                        rs.getInt("numberInStock"), rs.getInt("quantitySold")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionByProductId");
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public int get1ProductOptionIdByProductId(int pid) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select distinct productOptionId from Product_Option where productId= ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("Error at get1ProductOptionIdByProductId " + e.getMessage());
        }
        closeStatement(ps, rs);
        return 0;
    }

    public List<ProductOption> getOtherProductOptionByProductId(int productOptionid) {
        String sql = "select * from product_option where productId = (select productId from Product_Option where productOptionId = ?) and productOptionId != ?";
        List<ProductOption> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productOptionid);
            ps.setInt(2, productOptionid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductOption(rs.getInt("productOptionId"), rs.getInt("productId"), rs.getInt("hardwareMemoryId"), rs.getInt("ramMemoryId"),
                        rs.getInt("colorId"), rs.getInt("screensizeId"), rs.getInt("resolutionId"), rs.getInt("graphicCardId"), rs.getDouble("price"),
                        rs.getInt("numberInStock"), rs.getInt("quantitySold")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionByProductId " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public Product getProductByProductOptionId(int productOptionId) {
        String sql = "select * from Product where productId = (select productId from Product_Option where productOptionId = ?)";
        PreparedStatement ps = null;
        ResultSet rst = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productOptionId);
            rst = ps.executeQuery();
            if (rst.next()) {
                return new Product(rst.getInt("productId"), rst.getString("productName"), getBrandById(rst.getInt("brandId")), rst.getString("productDetail"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductByProductOptionId " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rst != null) try {
                rst.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public List<Product> getProductList() {
        String sql = "select * from Product";
        List<Product> list = new ArrayList<>();
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ResultSet rst = ps.executeQuery();
            while (rst.next()) {
                list.add(new Product(rst.getInt("productId"), rst.getString("productName"), getBrandById(rst.getInt("brandId")), rst.getString("productDetail")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductList " + e.getMessage());
        } finally {
            if (ps != null)
                try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public Image getImageByProductOptionId(int id) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from [image] where product_OptionId = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Image(rs.getInt(1), rs.getString(2), id);
            }
        } catch (SQLException e) {
            System.out.println("Error at getImageByProductOptionId " + e.getMessage());
        }
        closeStatement(ps, rs);
        return null;
    }

    public Category getCategoryById(int id) {
        String sql = "select * from category where categoryId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Category(id, rs.getString("categoryName"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getCategoryById " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Coupon getCouponById(int id) {
        String sql = "select * from coupon where couponId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Coupon(rs.getInt("couponId"), rs.getDouble("discountRate"), rs.getDate("startDate"), rs.getDate("endDate"), rs.getBoolean("isUsed"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getCouponById " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public List<ScreenSize> getScreenSizeList() {
        String sql = "select * from ScreenSize";
        List<ScreenSize> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ScreenSize(rs.getInt("screenSizeId"), rs.getString("screenSize")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getScreenSizeList");
        } finally {
            if (ps != null)
                try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return list;
    }

    public List<GraphicCard> getGraphicCardList() {
        String sql = "select * from GraphicCard";
        List<GraphicCard> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new GraphicCard(rs.getInt("graphicCardId"), rs.getString("graphicCard")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getGraphicCard " + e.getMessage());
        } finally {
            if (ps != null)
                try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Resolution> getResolutionList() {
        String sql = "select * from resolution";
        List<Resolution> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Resolution(rs.getInt("resolutionId"), rs.getString("resolution")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getResolutionList " + e.getMessage());
        } finally {
            if (ps != null)
                try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<ProductOption> getProductOptionList() {
//        String sql = "select po.productOptionId, p.productId, p.productName, p.categoryId, p.productDetail, c.color, hm.hardwareMemory, "
//                + "rm.ramMemory, b.brandName, sc.screenSize, r.resolution, gc.graphicCard from Brand b, Product_Option po, product p, "
//                + "HardwareMemory hm, RamMemory rm,\n"
//                + " Color c, ScreenSize sc, Resolution r, GraphicCard gc where po.productId = p.productId and po.hardwareMemoryId = hm.hardwareMemoryId and po.resolutionId = r.resolutionId\n"
//                + " and po.ramMemoryId = rm.ramMemoryId and po.colorId = c.colorId and po.brandId = b.brandId and po.graphicCardId = gc.graphicCardId and po.ScreenSizeId = sc.screenSizeId\n";
//        String sql = "select * from Brand b, Product_Option po, product p, "
//                + "HardwareMemory hm, RamMemory rm,\n"
//                + " Color c, ScreenSize sc, Resolution r, GraphicCard gc where po.productId = p.productId and po.hardwareMemoryId = hm.hardwareMemoryId and po.resolutionId = r.resolutionId\n"
//                + " and po.ramMemoryId = rm.ramMemoryId and po.colorId = c.colorId and po.brandId = b.brandId and po.graphicCardId = gc.graphicCardId and po.ScreenSizeId = sc.screenSizeId\n";
        String sql = "select * from product_Option";
        List<ProductOption> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductOption(rs.getInt("productOptionId"), rs.getInt("productId"), rs.getInt("hardwareMemoryId"),
                        rs.getInt("ramMemoryId"), rs.getInt("colorId"), rs.getInt("screenSizeId"), rs.getInt("resolutionId"),
                        rs.getInt("graphicCardId"), rs.getDouble("price"), rs.getInt("numberInStock"), rs.getInt("quantitySold")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionList " + e.getMessage());
        } finally {
            if (ps != null)
                try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public int getProductQuantitySold() {
        return 0;
    }

    public Color getColorById(int id) {
        String sql = "select * from color where colorId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Color(rs.getInt("colorId"), rs.getString("color"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getColorById " + e.getMessage());
        } finally {
            if (ps != null)
                try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Brand getBrandById(int id) {
        String sql = "select * from brand where brandId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Brand(rs.getInt("brandId"), rs.getString("brandName"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getBrandById " + e.getMessage());
        } finally {
            if (ps != null)
                try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public GraphicCard getGraphicCardById(int id) {
        String sql = "select * from graphicCard where graphicCardId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new GraphicCard(rs.getInt("graphicCardId"), rs.getString("graphicCard"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getGraphicCardById " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public HardwareMemory getHardwareMemoryById(int id) {
        String sql = "select * from hardwareMemory where hardwareMemoryId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new HardwareMemory(rs.getInt("hardwareMemoryId"), rs.getString("hardwareMemory"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getGraphicCardById " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public RamMemory getRamMemoryById(int id) {
        String sql = "select * from ramMemory where ramMemoryId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new RamMemory(rs.getInt("ramMemoryId"), rs.getString("ramMemory"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getRamMemoryById " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Resolution getResolutionById(int id) {
        String sql = "select * from resolution where resolutionId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Resolution(rs.getInt("resolutionId"), rs.getString("resolution"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getResolutionById " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public ScreenSize getScreenSizeById(int id) {
        String sql = "select * from screenSize where screenSizeId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new ScreenSize(rs.getInt("screenSizeId"), rs.getString("screenSize"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getScreenSizeById " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

//    public List<Object> getProductOptionList(){
////        String sql = "select * From product_option";
//        String sql = "select p.productId, p.productName, c.color, hm.hardwareMemory, rm.ramMemory, b.brandName from Brand b, Product_Option po, product p, HardwareMemory hm, RamMemory rm, Color c where po.productId = p.productId and po.hardwareMemoryId = hm.hardwareMemoryId\n" +
//"	and po.ramMemoryId = rm.ramMemoryId and po.colorId = c.colorId and po.brandId = b.brandId";
//        List<Object> list = new ArrayList();
//        try {
//            ps = connection.prepareStatement(sql);
//            rs = ps.executeQuery();
//            while(rs.next()){
//                list.add(new Object(){
//                    public final String name = rs.getString("productName");
//                    public final String color = rs.getString("color");
//                    public final String hardwareMemory = rs.getString("hardwareMemory");
//                    public final String ramMemory = rs.getString("ramMemory");
//                    public final String brandName = rs.getString("brandName");
//                    @Override
//                    public String toString(){
//                        return name + " " + color + " " + hardwareMemory;
//                    }
//                    public String getName(){
//                        return name;
//                    }
//                });
//            }
//        } catch (SQLException e) {
//            System.out.println("Error at getProductOptionList " + e.getMessage());
//        }
//        return list;
//    }
    public List<Color> getColorList() {
        String sql = "select * from color";
        List<Color> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Color(rs.getInt("colorId"), rs.getString("color")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getColorList " + e.getMessage());

        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }

    public List<RamMemory> getRamMemoryList() {
        String sql = "select * from RamMemory";
        List<RamMemory> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new RamMemory(rs.getInt("ramMemoryId"), rs.getString("ramMemory")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getRamMemoryList " + e.getMessage());

        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }

    public List<HardwareMemory> getHardwareMemoryList() {
        String sql = "select * from hardwareMemory";
        List<HardwareMemory> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new HardwareMemory(rs.getInt("hardwareMemoryId"), rs.getString("hardwareMemory")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getHardwareMemoryList " + e.getMessage());

        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }

    public List<Brand> getBrandList() {
        String sql = "select * from brand";
        List<Brand> brandList = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                brandList.add(new Brand(rs.getInt("brandId"), rs.getString("brandName")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getBrandList " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return brandList;
    }

    public Option getOptionIdByName(String optionName) {
        String sql = "select * from [Option] where optionName = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, optionName);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Option(rs.getInt("optionId"), rs.getString("optionName"));
            }
        } catch (SQLException e) {
            System.out.println("Error at productDAO.getOptionIdByName " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public int getProductOptionId(int productId, int hardwareMemoryId, int ramMemory, int colorId, int screenSizeId, int resolutionId, int graphicCardId) {
        String sql = "select * From product_option where productId = ? and hardwareMemoryId = ? and ramMemoryId = ? and colorId = ? and "
                + "screenSizeId = ? and resolutionId = ? and graphicCardId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, hardwareMemoryId);
            ps.setInt(3, ramMemory);
            ps.setInt(4, colorId);
            ps.setInt(5, screenSizeId);
            ps.setInt(6, resolutionId);
            ps.setInt(7, graphicCardId);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("productOptionId");
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionid " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return -1;
    }

    public int getProductOptionId(int productId, int optionId, String optionDetail) {
        String sql = "select * from product_option where productId = ? and optionId = ? and optionDetail = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, optionId);
            ps.setString(3, optionDetail);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("productOptionId");
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getProductOptionId ");
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return -1;
    }

    public int getProductOptionId(int productId, String optionDetail) {
        String sql = "select * from product_option where productId = ? and optionDetail = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setString(2, optionDetail);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("productOptionId");
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getProductOptionId " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return -1;
    }

    public void insertProduct(int id, String productName, int brandId, String productDetail) {
        String sql = "insert into Product values(?, ?, ?, ?)";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, productName);
            ps.setInt(3, brandId);
            ps.setString(4, productDetail);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.insertProduct " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void insertOption(String optionName) {
        String sql = "insert into [option] values (?) ";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, optionName);
            ps.execute();
        } catch (SQLException e) {
            status = "Error at ProductDAO.insertOption " + e.getMessage();
            System.out.println(status);
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

//    public void insertProductOption(int productId, int optionId, String optionDetail, double price, int numberInStock, int quantitySold) {
//        String sql = "insert into [product_option] values (?, ?, ?, ?, ?, ?) ";
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, productId);
//            ps.setInt(2, optionId);
//            ps.setString(3, optionDetail);
//            ps.setDouble(4, price);
//            ps.setInt(5, numberInStock);
//            ps.setInt(6, quantitySold);
//            ps.execute();
//        } catch (SQLException e) {
//            status = "Error at ProductDAO.insertProductOption " + e.getMessage();
//            System.out.println(status);
//        }
//    }
//    public void insertProductOption(int productId, String optionDetail, double price, int numberInStock, int quantitySold){
//        String sql = "insert into [product_option] values (?, ?, ?, ?, ?, ?) ";
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, productId);
//            ps.setString(2, optionDetail);
//            ps.setDouble(3, price);
//            ps.setInt(4, numberInStock);
//            ps.setInt(5, quantitySold);
//            ps.execute();
//        } catch (SQLException e) {
//            status = "Error at ProductDAO.insertProductOption " + e.getMessage();
//            System.out.println(status);
//        }
//    }
    public Category getCategoryByName(String categoryName) {
        String sql = "select * from category where categoryName = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, categoryName);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Category(rs.getInt("categoryId"), categoryName);
            }
        } catch (SQLException e) {
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public int getProductQuantitySold(int productId, int optionId, String optionDetail) {
        String sql = "";
        return 0;
    }

    public int getProductQuantitySold(int productId, String optionDetail) {
        String sql = "";
        return 0;
    }

    public int getProductNumberInStock() {
        return 0;
    }

    public boolean checkOptionNameIsExist(String optionName) {
        String sql = "select * from [option] where optionName = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, optionName);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error at checkoutOptionnameIsExist " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }

    public void insertImage(String imageText, int productOptionId) {
        String sql = "insert into Image values(?, ?)";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, imageText);
            ps.setInt(2, productOptionId);
            ps.executeUpdate();
        } catch (SQLException e) {
            status = "Error at productDAO.insertImage " + e.getMessage();
            System.out.println(status);
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public List<ProductWithImage> getProductListWithImage() {
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select distinct p.productId,p.productName,p.productDetail,i.imageText,po.price,po.numberInStock "
                + "from Product p, Product_Option po,Image i where p.productId=po.productId "
                + "and po.productOptionId=i.product_OptionId";
        List<ProductWithImage> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductWithImage(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6)));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        closeStatement(ps, rs);
        return list;
    }

    public List<ProductWithImage> NewestProductWithImage() {
        String sql = "select distinct top 4  p.productId,p.productName,p.productDetail,i.imageText,po.price,po.numberInStock\n"
                + "from Product p, Product_Option po,Image i where p.productId=po.productId \n"
                + "and po.productOptionId=i.product_OptionId order by p.productId desc";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<ProductWithImage> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductWithImage(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6)));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        closeStatement(ps, rs);
        return list;
    }

    public List<Image> getImageListByProductOptionId(int productOptionid) {
        String sql = "select * from [image] where product_OptionId = ?";
        List<Image> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productOptionid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Image(rs.getInt("imageId"), rs.getString("imageText"), productOptionid));
            }
        } catch (SQLException e) {
            System.out.println("Error at getImageListByProductOptionId " + e.getMessage());
        } finally {
            if (ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public ArrayList<ProductWithImage> getListProductSearch2(String search, String priceFrom, String priceTo, String hardware, String ram, String color, String screen, String reso, String card, String sortType) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from Product p \n"
                + "join Product_Option po on p.productId=po.productId \n"
                + "join [Image] i on i.product_OptionId = po.productOptionId\n"
                + "join HardwareMemory h on po.hardwareMemoryId = h.hardwareMemoryId\n"
                + "join RamMemory r on r.ramMemoryId=po.ramMemoryId\n"
                + "join Color c on c.colorId=po.colorId\n"
                + "join ScreenSize s on s.screenSizeId =po.screenSizeId\n"
                + "join Resolution re on re.resolutionId=po.resolutionId\n"
                + "join GraphicCard g on g.graphicCardId=po.graphicCardId\n"
                + "where po.price between ? and ? and \n"
                + "p.productName like ? and\n"
                + "h.hardwareMemory like ? and r.ramMemory like ? and c.color like ? and s.screenSize like ? and re.resolution like ? and g.graphicCard like ? "
                + sortType;
        try {
            if (search == null || search.isEmpty()) {
                search = "";
            }
            if (hardware == null || hardware.isEmpty() || hardware.equalsIgnoreCase("all")) {
                hardware = "";
            }
            if (color == null || color.isEmpty() || color.equalsIgnoreCase("all")) {
                color = "";
            }
            if (ram == null || ram.isEmpty() || ram.equalsIgnoreCase("all")) {
                ram = "";
            }
            if (screen == null || screen.isEmpty() || screen.equalsIgnoreCase("all")) {
                screen = "";
            }
            if (reso == null || reso.isEmpty() || reso.equalsIgnoreCase("all")) {
                reso = "";
            }
            if (card == null || card.isEmpty() || card.equalsIgnoreCase("all")) {
                card = "";
            }
            if (priceFrom == null || priceFrom.isEmpty()) {
                priceFrom = "0";
            }
            if (priceTo == null || priceTo.isEmpty()) {
                priceTo = "9999999999";
            }
            if (sortType == null || sortType.isEmpty()) {
                sortType = "";
            }
            ArrayList<ProductWithImage> list = new ArrayList<>();
            ps = connection.prepareStatement(sql);
            ps.setDouble(1, Double.valueOf(priceFrom));
            ps.setDouble(2, Double.valueOf(priceTo));
            ps.setString(3, "%" + search + "%");
            ps.setString(4, "%" + hardware + "%");
            ps.setString(5, "%" + ram + "%");
            ps.setString(6, "%" + color + "%");
            ps.setString(7, "%" + screen + "%");
            ps.setString(8, "%" + reso + "%");
            ps.setString(9, "%" + card + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                // Product u = new Product(rs.getInt(1), rs.getString(2), new Category(rs.getInt("categoryId"), rs.getString("categoryName")), new Coupon(), rs.getString("producDetail"));
                //u.setCategory(new Category(rs.getInt("categoryId"), rs.getString("categoryName")));
                ProductWithImage u = new ProductWithImage();
                u.setProductName(rs.getString("productName"));
                u.setProductID(rs.getInt("productId"));
                u.setImageText(rs.getString("imageText"));
                u.setProductDetail(rs.getString("productDetail"));
                u.setPrice(rs.getInt("price"));
                list.add(u);
            }
            return list;
        } catch (NumberFormatException | SQLException e) {
            System.out.println("Error at getListProductSearch2 " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }

    public ProductWithImage getProductWithImageByPid(int pid) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT DISTINCT p.productId,p.productName, p.productDetail, i.imageText, po.price, po.numberInStock\n"
                + "FROM Product p\n"
                + "JOIN Product_Option po ON p.productId = po.productId\n"
                + "JOIN Image i ON po.productOptionId = i.product_OptionId\n"
                + "WHERE p.productId = ?;";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductWithImage p = new ProductWithImage(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6));
                return p;
            }

        } catch (SQLException e) {
            System.out.println("Error at getProductWithImageByPid " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }

    public List<ProductWithImage> getListByPage(List<ProductWithImage> list, int start, int end) {
        ArrayList<ProductWithImage> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public HashMap<Integer, Integer> getTop4ProductOptionTotalMoney() {
        String sql = "select top 4 productOptionId,Max(numberInStock*quantitySold) as Total"
                + " from Product_Option group by productOptionId order by total desc";
        PreparedStatement ps = null;
        ResultSet rs = null;
        HashMap<Integer, Integer> total = new HashMap<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                total.put(rs.getInt(1), rs.getInt(2));
            }
            return total;
        } catch (SQLException e) {
            System.out.println("Error at getTop4ProductOptionTotalMoney " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }

    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
//        System.out.println(ProductDAO.INSTANCE.checkOptionNameIsExist("color"));
//        ProductDAO.INSTANCE.insertProduct(3, "test", 1, null);
//        System.out.println(ProductDAO.INSTANCE.getCategoryByName("mouse"));
////        System.out.println(ProductDAO.INSTANCE.getProductOptionId(1, ProductDAO.INSTANCE.getOptionIdByName("color").getOptionId(), "red"));
//        ProductDAO.INSTANCE.getBrandList().forEach((e) -> System.out.print(e + " "));
//        System.out.println("");
//        ProductDAO.INSTANCE.getHardwareMemoryList().forEach((e) -> System.out.print(e + " "));
//        System.out.println("");
//        ProductDAO.INSTANCE.getRamMemoryList().forEach((e) -> System.out.print(e + " "));
//        System.out.println("");
//
//        
//        Image i = ProductDAO.INSTANCE.getImageByProductOptionId(1);
//        System.out.println(i);
//        System.out.println(ProductDAO.INSTANCE.get1ProductOptionIdByProductId(1));

//        System.out.println(CouponDAO.INSTANCE.checkProductOptionIdExisted(ProductDAO.INSTANCE.get1ProductOptionIdByProductId(1)));
//        System.out.println(ProductDAO.INSTANCE.getProductListWithImage().size());
//        ProductDAO.INSTANCE.getProductOptionById(1).getProductOptionId();
//        System.out.println(ProductDAO.INSTANCE.getImageListByProductOptionId(19).get(0).getImageText());
        System.out.println();
        HashMap<Integer, Integer> total = p.getTop4ProductOptionTotalMoney();
        for (Map.Entry<Integer, Integer> entry : total.entrySet()) {
            Integer key = entry.getKey();
            Integer val = entry.getValue();
            System.out.println(key + " " + val);
        }
    }
}
