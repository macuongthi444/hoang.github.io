/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author hoang
 */
public class PostProduct {

    private int postProductId;
    private Post postId;
    private ProductOption productOptionId;

    public PostProduct() {
    }

    public PostProduct(int postProductId, Post postId, ProductOption productOptionId) {
        this.postProductId = postProductId;
        this.postId = postId;
        this.productOptionId = productOptionId;
    }

    public int getPostProductId() {
        return postProductId;
    }

    public void setPostProductId(int postProductId) {
        this.postProductId = postProductId;
    }

    public Post getPostId() {
        return postId;
    }

    public void setPostId(Post postId) {
        this.postId = postId;
    }

    public ProductOption getProductOptionId() {
        return productOptionId;
    }

    public void setProductOptionId(ProductOption productOptionId) {
        this.productOptionId = productOptionId;
    }

    @Override
    public String toString() {
        return "PostProduct{" + "postProductId=" + postProductId + ", postId=" + postId + ", productOptionId=" + productOptionId + '}';
    }

}
