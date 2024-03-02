/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author hoang
 */
public class PostType {

    private int postTypeID;
    private String postTypeDetail;

    public PostType() {
    }

    public PostType(int postTypeID, String postTypeDetail) {
        this.postTypeID = postTypeID;
        this.postTypeDetail = postTypeDetail;
    }

    public int getPostTypeID() {
        return postTypeID;
    }

    public void setPostTypeID(int postTypeID) {
        this.postTypeID = postTypeID;
    }

    public String getPostTypeDetail() {
        return postTypeDetail;
    }

    public void setPostTypeDetail(String postTypeDetail) {
        this.postTypeDetail = postTypeDetail;
    }

    @Override
    public String toString() {
        return "PostType{" + "postTypeID=" + postTypeID + ", postTypeDetail=" + postTypeDetail + '}';
    }
     
}
