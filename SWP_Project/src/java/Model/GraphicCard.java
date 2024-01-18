/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class GraphicCard {
    private int graphicCardId;
    private String graphicCard;

    public GraphicCard() {
    }

    public GraphicCard(int graphicCardId, String graphicCard) {
        this.graphicCardId = graphicCardId;
        this.graphicCard = graphicCard;
    }

    public int getGraphicCardId() {
        return graphicCardId;
    }

    public void setGraphicCardId(int graphicCardId) {
        this.graphicCardId = graphicCardId;
    }

    public String getGraphicCard() {
        return graphicCard;
    }

    public void setGraphicCard(String graphicCard) {
        this.graphicCard = graphicCard;
    }

    @Override
    public String toString() {
        return "GraphicCard{" + "graphicCardId=" + graphicCardId + ", graphicCard=" + graphicCard + '}';
    }
    
    
}
