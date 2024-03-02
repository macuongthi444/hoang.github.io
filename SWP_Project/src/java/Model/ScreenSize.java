/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class ScreenSize {
    private int screenSizeId;
    private String screenSize;

    public ScreenSize() {
    }

    public ScreenSize(int screenSizeId, String screenSize) {
        this.screenSizeId = screenSizeId;
        this.screenSize = screenSize;
    }

    public int getScreenSizeId() {
        return screenSizeId;
    }

    public void setScreenSizeId(int screenSizeId) {
        this.screenSizeId = screenSizeId;
    }

    public String getScreenSize() {
        return screenSize;
    }

    public void setScreenSize(String screenSize) {
        this.screenSize = screenSize;
    }

    @Override
    public String toString() {
        return "ScreenSize{" + "screenSizeId=" + screenSizeId + ", screenSize=" + screenSize + '}';
    }
    
    
}
