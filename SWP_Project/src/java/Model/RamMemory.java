/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class RamMemory {
    private int ramMemoryId;
    private String ramMemory;

    public RamMemory() {
    }

    public RamMemory(int ramMemoryId, String ramMemory) {
        this.ramMemoryId = ramMemoryId;
        this.ramMemory = ramMemory;
    }

    public int getRamMemoryId() {
        return ramMemoryId;
    }

    public void setRamMemoryId(int ramMemoryId) {
        this.ramMemoryId = ramMemoryId;
    }

    public String getRamMemory() {
        return ramMemory;
    }

    public void setRamMemory(String ramMemory) {
        this.ramMemory = ramMemory;
    }

    @Override
    public String toString() {
        return "RamMemory{" + "ramMemoryId=" + ramMemoryId + ", ramMemory=" + ramMemory + '}';
    }
    
}
