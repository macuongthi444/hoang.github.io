/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class ProductOption {
    private int productId;
    private Option optionId;
    private String optionDetail;
    private double price;
    private int numberInStock;
    private int quantitySold;

    public ProductOption() {
    }

    public ProductOption(int productId, Option optionId, String optionDetail, double price, int numberInStock, int quantitySold) {
        this.productId = productId;
        this.optionId = optionId;
        this.optionDetail = optionDetail;
        this.price = price;
        this.numberInStock = numberInStock;
        this.quantitySold = quantitySold;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public Option getOptionId() {
        return optionId;
    }

    public void setOptionId(Option optionId) {
        this.optionId = optionId;
    }

    public String getOptionDetail() {
        return optionDetail;
    }

    public void setOptionDetail(String optionDetail) {
        this.optionDetail = optionDetail;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getNumberInStock() {
        return numberInStock;
    }

    public void setNumberInStock(int numberInStock) {
        this.numberInStock = numberInStock;
    }

    public int getQuantitySold() {
        return quantitySold;
    }

    public void setQuantitySold(int quantitySold) {
        this.quantitySold = quantitySold;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", optionId=" + optionId + ", optionDetail=" + optionDetail + ", price=" + price + ", numberInStock=" + numberInStock + ", quantitySold=" + quantitySold + '}';
    }
    
    
}
