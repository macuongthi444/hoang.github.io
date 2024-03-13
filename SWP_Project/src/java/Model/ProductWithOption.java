/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author This PC
 */
public class ProductWithOption {
    private int productOptionId;
    private HardwareMemory hardware;
    private RamMemory ram;
    private Color color;
    private ScreenSize size;
    private Resolution resolution;
    private GraphicCard card;
    private double price;
    public ProductWithOption() {
    }

    public ProductWithOption(HardwareMemory hardware, RamMemory ram, Color color, ScreenSize size, Resolution resolution, GraphicCard card) {
        this.hardware = hardware;
        this.ram = ram;
        this.color = color;
        this.size = size;
        this.resolution = resolution;
        this.card = card;
    }

    public HardwareMemory getHardware() {
        return hardware;
    }

    public void setHardware(HardwareMemory hardware) {
        this.hardware = hardware;
    }

    public RamMemory getRam() {
        return ram;
    }

    public void setRam(RamMemory ram) {
        this.ram = ram;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public ScreenSize getSize() {
        return size;
    }

    public void setSize(ScreenSize size) {
        this.size = size;
    }

    public Resolution getResolution() {
        return resolution;
    }

    public void setResolution(Resolution resolution) {
        this.resolution = resolution;
    }

    public GraphicCard getCard() {
        return card;
    }

    public void setCard(GraphicCard card) {
        this.card = card;
    }

    public int getProductOptionId() {
        return productOptionId;
    }

    public void setProductOptionId(int productOptionId) {
        this.productOptionId = productOptionId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
}
