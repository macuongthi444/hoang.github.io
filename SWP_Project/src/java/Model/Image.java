/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.io.File;

/**
 *
 * @author hoang
 */
public class Image {
    private int imageId;
    private String imageText;
    private int productOptionId;

    public Image() {
    }

    public Image(int imageId, String imageText, int productOptionId) {
        this.imageId = imageId;
        this.imageText = imageText;
        this.productOptionId = productOptionId;
    }

    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public String getImageText() {
        return imageText;
    }

    public void setImageText(String imageText) {
        this.imageText = imageText;
    }

    public int getProductOptionId() {
        return productOptionId;
    }

    public void setProductOptionId(int productOptionId) {
        this.productOptionId = productOptionId;
    }

    @Override
    public String toString() {
        return "Image{" + "imageId=" + imageId + ", imageText=" + imageText + ", productOptionId=" + productOptionId + '}';
    }

}
