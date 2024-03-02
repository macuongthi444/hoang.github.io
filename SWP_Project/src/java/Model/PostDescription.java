/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author hoang
 */
public class PostDescription {

private int postDescriptionId;
private Post postId;
private String PostTitleDescription;
private String postDetail;
private String postImg;

    public PostDescription() {
    }

    public PostDescription(int postDescriptionId, Post postId, String PostTitleDescription, String postDetail, String postImg) {
        this.postDescriptionId = postDescriptionId;
        this.postId = postId;
        this.PostTitleDescription = PostTitleDescription;
        this.postDetail = postDetail;
        this.postImg = postImg;
    }

    public int getPostDescriptionId() {
        return postDescriptionId;
    }

    public void setPostDescriptionId(int postDescriptionId) {
        this.postDescriptionId = postDescriptionId;
    }

    public Post getPostId() {
        return postId;
    }

    public void setPostId(Post postId) {
        this.postId = postId;
    }

    public String getPostTitleDescription() {
        return PostTitleDescription;
    }

    public void setPostTitleDescription(String PostTitleDescription) {
        this.PostTitleDescription = PostTitleDescription;
    }

    public String getPostDetail() {
        return postDetail;
    }

    public void setPostDetail(String postDetail) {
        this.postDetail = postDetail;
    }

    public String getPostImg() {
        return postImg;
    }

    public void setPostImg(String postImg) {
        this.postImg = postImg;
    }

    @Override
    public String toString() {
        return "PostDescription{" + "postDescriptionId=" + postDescriptionId + ", postId=" + postId + ", PostTitleDescription=" + PostTitleDescription + ", postDetail=" + postDetail + ", postImg=" + postImg + '}';
    }

}
