/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author zenzen1
 */
public class CartItem {
//    private int cartId;
    private Account account;
    private ProductOption productOption;
    private int quantity;

    public CartItem() {
    }

    public CartItem(Account account, ProductOption productOption, int quantity) {
        this.account = account;
        this.productOption = productOption;
        this.quantity = quantity;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public ProductOption getProductOption() {
        return productOption;
    }

    public void setProductOption(ProductOption productOption) {
        this.productOption = productOption;
    }

    

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Cart{" + " account=" + account.getId() + ", productOptionId=" + productOption.getProductOptionId() + ", quantity=" + quantity + '}';
    }
    
    
}
