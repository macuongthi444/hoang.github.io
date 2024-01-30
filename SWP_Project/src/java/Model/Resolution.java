/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class Resolution {
    private int resolutionId;
    private String resolution;

    public Resolution() {
    }

    public Resolution(int resolutionId, String resolution) {
        this.resolutionId = resolutionId;
        this.resolution = resolution;
    }

    public int getResolutionId() {
        return resolutionId;
    }

    public void setResolutionId(int resolutionId) {
        this.resolutionId = resolutionId;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }

    @Override
    public String toString() {
        return "Resolution{" + "resolutionId=" + resolutionId + ", resolution=" + resolution + '}';
    }
    
    
}
