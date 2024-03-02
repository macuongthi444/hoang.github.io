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
    private Brand brand;
    private String productDetail;
    
    public Product() {
    }

    public Product(int productId, String productName, Brand brand, String productDetail) {
        this.productId = productId;
        this.productName = productName;
        this.brand = brand;
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

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }



    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", productName=" + productName + ", brand=" + brand  + ", productDetail=" + productDetail + '}';
    }

    
}
