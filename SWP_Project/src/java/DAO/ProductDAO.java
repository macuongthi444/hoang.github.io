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
import Model.Option;
import Model.Product;
import Model.ProductOption;
import Model.ProductWithImage;
import Model.ProductWithOption;
import Model.RamMemory;
import Model.Resolution;
import Model.ScreenSize;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class ProductDAO extends DBContext {

    public static final ProductDAO INSTANCE = new ProductDAO();
    private static PreparedStatement ps = null;
    private static ResultSet rs = null;

    public void insertProductOption(int productId, int brandId, int hardwareMemoryId, int ramMemoryId, int colorId, int screenSizeId,
            int resolutionId, int graphicCardId, double price, int numberInStock, int quantitySold) {
        String sql = "insert into product_Option values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, brandId);
            ps.setInt(3, hardwareMemoryId);
            ps.setInt(4, ramMemoryId);
            ps.setInt(5, colorId);
            ps.setInt(6, screenSizeId);
            ps.setInt(7, resolutionId);
            ps.setInt(8, graphicCardId);
            ps.setDouble(9, price);
            ps.setInt(10, numberInStock);
            ps.setInt(11, quantitySold);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.InsertProduct_Option " + e.getMessage());
        }
    }

    public List<ScreenSize> getScreenSizeList() {
        String sql = "select * from ScreenSize";
        List<ScreenSize> list = new ArrayList<>();
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
        }
        return list;
    }

    public List<GraphicCard> getGraphicCardList() {
        String sql = "select * from GraphicCard";
        List<GraphicCard> list = new ArrayList<>();
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

    public List<Object> getProductOptionList() {
//        String sql = "select * From product_option";
        String sql = "select p.productId, p.productName, c.color, hm.hardwareMemory, rm.ramMemory, b.brandName from Brand b, Product_Option po, product p, HardwareMemory hm, RamMemory rm, Color c where po.productId = p.productId and po.hardwareMemoryId = hm.hardwareMemoryId\n"
                + "	and po.ramMemoryId = rm.ramMemoryId and po.colorId = c.colorId and po.brandId = b.brandId";
        List<Object> list = new ArrayList();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Object() {
                    public final String name = rs.getString("productName");
                    public final String color = rs.getString("color");
                    public final String hardwareMemory = rs.getString("hardwareMemory");
                    public final String ramMemory = rs.getString("ramMemory");
                    public final String brandName = rs.getString("brandName");

                    @Override
                    public String toString() {
                        return name + " " + color + " " + hardwareMemory;
                    }

                    public String getName() {
                        return name;
                    }
                });
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionList " + e.getMessage());
        }
        return list;
    }

    public List<Color> getColorList() {
        String sql = "select * from color";
        List<Color> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Color(rs.getInt("colorId"), rs.getString("color")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getColorList " + e.getMessage());

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

    public List<RamMemory> getRamMemoryList() {
        String sql = "select * from RamMemory";
        List<RamMemory> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new RamMemory(rs.getInt("ramMemoryId"), rs.getString("ramMemory")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getRamMemoryList " + e.getMessage());

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

    public List<HardwareMemory> getHardwareMemoryList() {
//        System.out.println("skjefhjskjfh");
        String sql = "select * from hardwareMemory";
        List<HardwareMemory> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new HardwareMemory(rs.getInt("hardwareMemoryId"), rs.getString("hardwareMemory")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getHardwareMemoryList " + e.getMessage());

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

    public List<Brand> getBrandList() {
        String sql = "select * from brand";
        List<Brand> brandList = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                brandList.add(new Brand(rs.getInt("brandId"), rs.getString("brandName")));
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getBrandList " + e.getMessage());
        } finally {
            if (ps != null)
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return brandList;
    }

    public Option getOptionIdByName(String optionName) {
        String sql = "select * from [Option] where optionName = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, optionName);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Option(rs.getInt("optionId"), rs.getString("optionName"));
            }
        } catch (SQLException e) {
            System.out.println("Error at productDAO.getOptionIdByName " + e.getMessage());
        }
        return null;
    }

    public int getProductOptionId(int productId, int brandId, int hardwareMemoryId, int ramMemory, int colorId, int screenSizeId, int resolutionId, int graphicCardId) {
        String sql = "select * From product_option where productId = ? and brandId = ? and hardwareMemoryId = ? and ramMemoryId = ? and colorId = ? and "
                + "screenSizeId = ? and resolutionId = ? and graphicCardId = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, brandId);
            ps.setInt(3, hardwareMemoryId);
            ps.setInt(4, ramMemory);
            ps.setInt(5, colorId);
            ps.setInt(6, screenSizeId);
            ps.setInt(7, resolutionId);
            ps.setInt(8, graphicCardId);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("productOptionId");
            }
        } catch (SQLException e) {
            System.out.println("Error at getProductOptionid " + e.getMessage());
        }
        return -1;
    }

    public int getProductOptionId(int productId, int optionId, String optionDetail) {
        String sql = "select * from product_option where productId = ? and optionId = ? and optionDetail = ?";
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
        }
        return -1;
    }

    public int getProductOptionId(int productId, String optionDetail) {
        String sql = "select * from product_option where productId = ? and optionDetail = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setString(2, optionDetail);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("productOptionId");
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getProductOptionId ");
        }
        return -1;
    }

    public ProductWithOption getProductOptionById(int productId) {
        String sql = "select * from [Product_Option] where [productOptionId] = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            rs = ps.executeQuery();
            if (rs.next()) {
                ProductWithOption o = new ProductWithOption();
                o.setPrice(rs.getDouble("price"));
                return o;
            }
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.getProductOptionId ");
        }
        return null;
    }

    public void insertProduct(int id, String productName, int categoryId, Integer couponId, String productDetail) {
        String sql = "insert into Product values(?, ?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, productName);
            ps.setInt(3, categoryId);
            ps.setString(5, productDetail);
            if (couponId == null) {
                ps.setNull(4, java.sql.Types.INTEGER);
            } else {
                ps.setInt(4, couponId);
            }
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at ProductDAO.insertProduct " + e.getMessage());
        }
    }

    public void insertOption(String optionName) {
        String sql = "insert into [option] values (?) ";
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

    public void insertProductOption(int productId, int optionId, String optionDetail, double price, int numberInStock, int quantitySold) {
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
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, optionName);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error at checkoutOptionnameIsExist " + e.getMessage());
        }
        return false;
    }

    public void insertImage(String imageText, int productOptionId) {
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

    public ArrayList<Product> getListProductSearch(String search, String cateId, String priceFrom, String priceTo, String sortType) {
        String sql = "select * from Product p join Category c on p.categoryId=c.categoryId\n "
                + "                  join Product_Option po on p.productId=po.productId\n "
                + "                   where po.price between ? and ? and \n "
                + "				   p.productName like ? and \n "
                + "				   c.categoryId = ? "
                + sortType;
        try {
            if (search == null || search.isEmpty()) {
                search = "";
            }
            if (cateId == null || cateId.isEmpty()) {
                cateId = "1";
            }
            if (priceFrom == null || priceFrom.isEmpty()) {
                priceFrom = "0";
            }
            if (priceTo == null || priceTo.isEmpty()) {
                priceTo = "99999";
            }
            if (sortType == null || sortType.isEmpty()) {
                sortType = "";
            }
            ArrayList<Product> list = new ArrayList<>();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setDouble(1, Double.valueOf(priceFrom));
            ps.setDouble(2, Double.valueOf(priceTo));
            ps.setString(3, "%" + search + "%");
            ps.setInt(4, Integer.valueOf(cateId));

            rs = ps.executeQuery();
            while (rs.next()) {
                // Product u = new Product(rs.getInt(1), rs.getString(2), new Category(rs.getInt("categoryId"), rs.getString("categoryName")), new Coupon(), rs.getString("producDetail"));
                //u.setCategory(new Category(rs.getInt("categoryId"), rs.getString("categoryName")));
                Product u = new Product();
                u.setProductId(rs.getInt("productId"));
                u.setProductName(rs.getString(2));
                u.setCategory(new Category(rs.getInt("categoryId"), rs.getString("categoryName")));
                u.setProductOption(new ProductOption(0, 0, 0, 0, 0, 0, 0, 0, rs.getDouble("price"), 0, 0));
                list.add(u);
            }
            return list;
        } catch (Exception e) {

        }
        return null;
    }

    public ArrayList<ProductWithImage> getListProductSearch2(String search, String priceFrom, String priceTo, String hardware, String ram, String color, String screen, String reso, String card, String sortType) {
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
            PreparedStatement ps = connection.prepareStatement(sql);
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
        } catch (Exception e) {

        }
        return null;
    }

    public List<ProductWithImage> getProductListWithImage() {
        String sql = "select  p.productId,p.productName,p.productDetail,i.imageText,po.price,po.numberInStock "
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
            System.out.println("Error at ProductDAO.getColorList " + e.getMessage());

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

    public List<HardwareMemory> getHardwareList() {
        String sql = "select * from HardwareMemory";
        List<HardwareMemory> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                HardwareMemory h = new HardwareMemory(rs.getInt(1), rs.getString(2));
                list.add(h);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<ProductWithOption> getProductWithOptionById(int id) {
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
        }
        return null;
    }

    public ProductWithImage getProductById(int id) {
        String sql = "select  p.productId,p.productName,p.productDetail,i.imageText,po.price,po.numberInStock \n"
                + "                from Product p join Product_Option po\n"
                + "				on p.productId=po.productId \n"
                + "				join Image i on \n"
                + "                 po.productOptionId=i.product_OptionId\n"
                + "				where p.productId = " + id;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                ProductWithImage product = new ProductWithImage(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6));
                return product;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getBrandIdByProductId(int productId) {
        String sql = "select * from Brand b join Product_Option p on p.brandId = b.brandId\n"
                + "                							where p.productId = " + productId;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {

                return rs.getInt("brandId");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<ProductWithImage> getListProductByBrandId(int id) {
        String sql = "  select  p.productId,p.productName,p.productDetail,i.imageText,po.price,po.numberInStock\n"
                + "                             from Product p join Product_Option po \n"
                + "               				on p.productId=po.productId \n"
                + "               			join Image i on \n"
                + "                              po.productOptionId=i.product_OptionId \n"
                + "                			where po.brandId =  " + id ;
      
        try {
            List<ProductWithImage> list = new ArrayList<>();
            ps = connection.prepareStatement(sql);
//            ps.setInt(1, id);
            rs = ps.executeQuery();
           while (rs.next()) {
                ProductWithImage product = new ProductWithImage(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6));
                list.add(product);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

//    public ProductOption getProductOption(){
//    }
    public static void main(String[] args) {
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
//        ProductDAO.INSTANCE.getResolutionList().forEach((e) -> {
//            System.out.println(e);
//        });
//        ProductDAO.INSTANCE.getGraphicCardList().forEach((e) -> {
//            System.out.println(e);
//        });
//        ProductDAO.INSTANCE.getScreenSizeList().forEach((e) -> {
//            System.out.println(e);
//        });
        ProductDAO dao = new ProductDAO();
//        ArrayList<Category> list = new ArrayList<>();
//        list = dao.getListCate();
//        for (Category category : list) {
//            System.out.println(category.getCategoryName());
//        }
//        ArrayList<ProductWithImage> list1 = dao.getListProductSearch2("", "", "", "", "order by po.price desc");
//        for (ProductWithImage product : list1) {
//            System.out.println(product.getProductName());
//        }
//         List<ProductWithImage> list = dao.getProductListWithImage();
//         System.out.println(list);
//        ProductWithImage product = dao.getProductById(3);
//        System.out.println(product.getProductName());
//        
//        ProductWithOption o = dao.getProductOptionById(1);
//        System.out.println(o.getPrice());
        List<ProductWithImage> productSameBrand = dao.getListProductByBrandId(1);
        for (ProductWithImage productWithImage : productSameBrand) {
            System.out.println(productWithImage.getProductName());
        }
    }
}
