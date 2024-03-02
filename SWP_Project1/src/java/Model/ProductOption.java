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

   
    private int productOptionId;
    private int productId;
//    private Option optionId;
//    private String optionDetail;
    private int brandId, hardwareMemoryId, ramMemoryId, colorId, ScreenSizeId, resolutionId, graphicCardId;
    private double price;
    private int numberInStock;
    private int quantitySold;

    public ProductOption() {
    }

    public ProductOption(int productOptionId, int productId, int brandId, int hardwareMemoryId, int ramMemoryId, int colorId, int ScreenSizeId, int resolutionId, int graphicCardId, double price, int numberInStock, int quantitySold) {
        this.productOptionId = productOptionId;
        this.productId = productId;
        this.brandId = brandId;
        this.hardwareMemoryId = hardwareMemoryId;
        this.ramMemoryId = ramMemoryId;
        this.colorId = colorId;
        this.ScreenSizeId = ScreenSizeId;
        this.resolutionId = resolutionId;
        this.graphicCardId = graphicCardId;
        this.price = price;
        this.numberInStock = numberInStock;
        this.quantitySold = quantitySold;
    }

    public int getProductOptionId() {
        return productOptionId;
    }

    public void setProductOptionId(int productOptionId) {
        this.productOptionId = productOptionId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
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

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getHardwareMemoryId() {
        return hardwareMemoryId;
    }

    public void setHardwareMemoryId(int hardwareMemoryId) {
        this.hardwareMemoryId = hardwareMemoryId;
    }

    public int getRamMemoryId() {
        return ramMemoryId;
    }

    public void setRamMemoryId(int ramMemoryId) {
        this.ramMemoryId = ramMemoryId;
    }

    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public int getScreenSizeId() {
        return ScreenSizeId;
    }

    public void setScreenSizeId(int ScreenSizeId) {
        this.ScreenSizeId = ScreenSizeId;
    }

    public int getResolutionId() {
        return resolutionId;
    }

    public void setResolutionId(int resolutionId) {
        this.resolutionId = resolutionId;
    }

    public int getGraphicCardId() {
        return graphicCardId;
    }

    public void setGraphicCardId(int graphicCardId) {
        this.graphicCardId = graphicCardId;
    }

    @Override
    public String toString() {
        return "ProductOption{" + "productOptionId=" + productOptionId + ", productId=" + productId + ", brandId=" + brandId + ", hardwareMemoryId=" + hardwareMemoryId + ", ramMemoryId=" + ramMemoryId + ", colorId=" + colorId + ", ScreenSizeId=" + ScreenSizeId + ", resolutionId=" + resolutionId + ", graphicCardId=" + graphicCardId + ", price=" + price + ", numberInStock=" + numberInStock + ", quantitySold=" + quantitySold + '}';
    }


}
