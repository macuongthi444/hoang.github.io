/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author hoang
 */
public class Post {

    private int postId;
    private String postTitle;
    private String postImg;
    private Date postStart;
    private Date postEnd;
    private PostType postTypeID;
    private Account postByUserMarketing ;
    private Coupon  couponId;

    public Post() {
    }

    public Post(int postId, String postTitle, String postImg, Date postStart, Date postEnd, PostType postTypeID, Account postByUserMarketing, Coupon couponId) {
        this.postId = postId;
        this.postTitle = postTitle;
        this.postImg = postImg;
        this.postStart = postStart;
        this.postEnd = postEnd;
        this.postTypeID = postTypeID;
        this.postByUserMarketing = postByUserMarketing;
        this.couponId = couponId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostImg() {
        return postImg;
    }

    public void setPostImg(String postImg) {
        this.postImg = postImg;
    }

    public Date getPostStart() {
        return postStart;
    }

    public void setPostStart(Date postStart) {
        this.postStart = postStart;
    }

    public Date getPostEnd() {
        return postEnd;
    }

    public void setPostEnd(Date postEnd) {
        this.postEnd = postEnd;
    }

    public PostType getPostTypeID() {
        return postTypeID;
    }

    public void setPostTypeID(PostType postTypeID) {
        this.postTypeID = postTypeID;
    }

    public Account getPostByUserMarketing() {
        return postByUserMarketing;
    }

    public void setPostByUserMarketing(Account postByUserMarketing) {
        this.postByUserMarketing = postByUserMarketing;
    }

    public Coupon getCouponId() {
        return couponId;
    }

    public void setCouponId(Coupon couponId) {
        this.couponId = couponId;
    }

    @Override
    public String toString() {
        return "Post{" + "postId=" + postId + ", postTitle=" + postTitle + ", postImg=" + postImg + ", postStart=" + postStart + ", postEnd=" + postEnd + ", postTypeID=" + postTypeID + ", postByUserMarketing=" + postByUserMarketing + ", couponId=" + couponId + '}';
    }
    
    

}
