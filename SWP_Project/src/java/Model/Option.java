/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class Option {
    private int optionId;
    private String optionName;

    public Option() {
    }

    public Option(int optionId, String optionName) {
        this.optionId = optionId;
        this.optionName = optionName;
    }

    public int getOptionId() {
        return optionId;
    }

    public void setOptionId(int optionId) {
        this.optionId = optionId;
    }

    public String getOptionName() {
        return optionName;
    }

    public void setOptionName(String optionName) {
        this.optionName = optionName;
    }

    @Override
    public String toString() {
        return "Option{" + "optionId=" + optionId + ", optionName=" + optionName + '}';
    }
    
    
}
