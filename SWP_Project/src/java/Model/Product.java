/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class Product {
    private int productId;
    private String productName;
    private Category category;
    private Coupon coupon;
    private String productDetail;
    private ProductOption productOption;

    public ProductOption getProductOption() {
        return productOption;
    }

    public void setProductOption(ProductOption productOption) {
        this.productOption = productOption;
    }
    
    public Product() {
    }

    public Product(String productName) {
        this.productName = productName;
    }

    public Product(int productId, String productName, Category category, Coupon coupon, String productDetail) {
        this.productId = productId;
        this.productName = productName;
        this.category = category;
        this.coupon = coupon;
        this.productDetail = productDetail;
    }

    public String getProductDetail() {
        return productDetail;
    }

    public void setProductDetail(String productDetail) {
        this.productDetail = productDetail;
    }
    
    
    
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Coupon getCoupon() {
        return coupon;
    }

    public void setCoupon(Coupon coupon) {
        this.coupon = coupon;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", productName=" + productName + ", category=" + category + ", coupon=" + coupon + ", productDetail=" + productDetail + '}';
    }

    
}
