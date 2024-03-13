/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import DAO.ProductDAO;
import java.util.List;

/**
 *
 * @author nguye
 */
public class ProductOption {
    private int productOptionId;
    private int productId;
//    private Option optionId;
//    private String optionDetail;
    private int hardwareMemoryId, ramMemoryId, colorId, ScreenSizeId, resolutionId, graphicCardId;
    private double price;
    private int numberInStock;
    private int quantitySold;
    
    private Product product;
    private HardwareMemory hardwareMemory;
    private RamMemory ramMemory;
    private Color color;
    private ScreenSize screenSize;
    private Resolution resolution;
    private GraphicCard graphicCard;
    
    private List<Image> images;
    
    public ProductOption() {
    }
    
    public ProductOption(int productOptionId, int productId, int hardwareMemoryId, int ramMemoryId, int colorId, int screenSizeId, int resolutionId, int graphicCardId, double price, int numberInStock, int quantitySold) {
        this.productOptionId = productOptionId;
        this.productId = productId;
        this.hardwareMemoryId = hardwareMemoryId;
        this.ramMemoryId = ramMemoryId;
        this.colorId = colorId;
        this.ScreenSizeId = screenSizeId;
        this.resolutionId = resolutionId;
        this.graphicCardId = graphicCardId;
        this.price = price;
        this.numberInStock = numberInStock;
        this.quantitySold = quantitySold;
        
        this.product = ProductDAO.INSTANCE.getProductByProductOptionId(productOptionId);
        this.hardwareMemory = ProductDAO.INSTANCE.getHardwareMemoryById(hardwareMemoryId);
        this.ramMemory = ProductDAO.INSTANCE.getRamMemoryById(ramMemoryId);
        this.color = ProductDAO.INSTANCE.getColorById(colorId);
        this.screenSize = ProductDAO.INSTANCE.getScreenSizeById(screenSizeId);
        this.resolution = ProductDAO.INSTANCE.getResolutionById(resolutionId);
        this.graphicCard = ProductDAO.INSTANCE.getGraphicCardById(graphicCardId);
        this.images = ProductDAO.INSTANCE.getImageListByProductOptionId(productOptionId);
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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public HardwareMemory getHardwareMemory() {
        return hardwareMemory;
    }

    public void setHardwareMemory(HardwareMemory hardwareMemory) {
        this.hardwareMemory = hardwareMemory;
    }

    public RamMemory getRamMemory() {
        return ramMemory;
    }

    public void setRamMemory(RamMemory ramMemory) {
        this.ramMemory = ramMemory;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public ScreenSize getScreenSize() {
        return screenSize;
    }

    public void setScreenSize(ScreenSize screenSize) {
        this.screenSize = screenSize;
    }

    public Resolution getResolution() {
        return resolution;
    }

    public void setResolution(Resolution resolution) {
        this.resolution = resolution;
    }

    public GraphicCard getGraphicCard() {
        return graphicCard;
    }

    public void setGraphicCard(GraphicCard graphicCard) {
        this.graphicCard = graphicCard;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }
    
    
    
    @Override
    public String toString() {
        return "ProductOption{" + "productOptionId=" + productOptionId + ", productId=" + productId + ", " + ", hardwareMemoryId=" + hardwareMemoryId + ", ramMemoryId=" + ramMemoryId + ", colorId=" + colorId + ", ScreenSizeId=" + ScreenSizeId + ", resolutionId=" + resolutionId + ", graphicCardId=" + graphicCardId + ", price=" + price + ", numberInStock=" + numberInStock + ", quantitySold=" + quantitySold + '}';
    }

    
    
}
