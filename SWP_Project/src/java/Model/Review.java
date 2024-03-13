package Model;

import java.util.Date;

public class Review {
          int id;
	  private int accountID;
	  private int productID;
	  private String contentReview;
	  private Date dateReview;
          private String productName;
          private String avatar;
          private int rating;

    public Review(int id, int accountID, int productID, String contentReview, Date dateReview, String productName, String avatar, int rating) {
        this.id = id;
        this.accountID = accountID;
        this.productID = productID;
        this.contentReview = contentReview;
        this.dateReview = dateReview;
        this.productName = productName;
        this.avatar = avatar;
        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
          
    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
          
    public int getId() {
        return id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setId(int id) {
        this.id = id;
    }
	public Review(int id,int accountID, int productID, String contentReview, Date dateReview) {	
            this.id = id;
		this.accountID = accountID;
		this.productID = productID;
		this.contentReview = contentReview;
		this.dateReview = dateReview;
	}
	public Review() {
		
	}
	@Override
	public String toString() {
		return "Review [accountID=" + accountID + ", productID=" + productID + ", contentReview=" + contentReview
				+ ", dateReview=" + dateReview + "]";
	}
	public int getAccountID() {
		return accountID;
	}
	public void setAccountID(int accountID) {
		this.accountID = accountID;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getContentReview() {
		return contentReview;
	}
	public void setContentReview(String contentReview) {
		this.contentReview = contentReview;
	}
	public Date getDateReview() {
		return dateReview;
	}
	public void setDateReview(Date dateReview) {
		this.dateReview = dateReview;
	}
	
	
}
