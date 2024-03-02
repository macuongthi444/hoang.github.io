/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author nguye
 */
public class Coupon {
    private int couponId;
    private double discountRate;
    private Date startDate;
    private Date endDate;
    private boolean isUsed;

    public Coupon() {
    }

    public Coupon(int couponId, double discountRate, Date startDate, Date endDate, boolean isUsed) {
        this.couponId = couponId;
        this.discountRate = discountRate;
        this.startDate = startDate;
        this.endDate = endDate;
        this.isUsed = isUsed;
    }

    public int getCouponId() {
        return couponId;
    }

    public void setCouponId(int couponId) {
        this.couponId = couponId;
    }

    public double getDiscountRate() {
        return discountRate;
    }

    public void setDiscountRate(double discountRate) {
        this.discountRate = discountRate;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public boolean isIsUsed() {
        return isUsed;
    }

    public void setIsUsed(boolean isUsed) {
        this.isUsed = isUsed;
    }

    @Override
    public String toString() {
        return "Coupon{" + "couponId=" + couponId + ", discountRate=" + discountRate + ", startDate=" + startDate + ", endDate=" + endDate + ", isUsed=" + isUsed + '}';
    }
    
    
}
