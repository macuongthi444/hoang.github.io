/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class HardwareMemory {
    private int hardwareMemoryId;
    private String hardwareMemory;

    public HardwareMemory() {
    }

    public HardwareMemory(int hardwareMemoryId, String hardwareMemory) {
        this.hardwareMemoryId = hardwareMemoryId;
        this.hardwareMemory = hardwareMemory;
    }

    public int getHardwareMemoryId() {
        return hardwareMemoryId;
    }

    public void setHardwareMemoryId(int hardwareMemoryId) {
        this.hardwareMemoryId = hardwareMemoryId;
    }

    public String getHardwareMemory() {
        return hardwareMemory;
    }

    public void setHardwareMemory(String hardwareMemory) {
        this.hardwareMemory = hardwareMemory;
    }

    @Override
    public String toString() {
        return "HardwareMemory{" + "hardwareMemoryId=" + hardwareMemoryId + ", hardwareMemory=" + hardwareMemory + '}';
    }
    
}
