package vo;

import java.sql.Date;

public class BoardBean {


    private int product_num; //어디에 들어있는 이미지 인지 
    private String product_name;
    private String Sname;
    private String product_category;
    private int product_price;
    private int product_weight;
    private int product_discount;
    private int product_count;
    private Date product_date;
    private int product_stock;
    private String product_expiration_date;
    private String product_handling;
    private String product_material;
    
    
    
    
    
    
    public int getProduct_num() {
        return product_num;
    }
    public void setProduct_num(int product_num) {
        this.product_num = product_num;
    }
    public String getProduct_name() {
        return product_name;
    }
    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }
    public String getSname() {
        return Sname;
    }
    public void setSname(String sname) {
        Sname = sname;
    }
    public String getProduct_category() {
        return product_category;
    }
    public void setProduct_category(String product_category) {
        this.product_category = product_category;
    }
    public int getProduct_price() {
        return product_price;
    }
    public void setProduct_price(int product_price) {
        this.product_price = product_price;
    }
    public int getProduct_weight() {
        return product_weight;
    }
    public void setProduct_weight(int product_weight) {
        this.product_weight = product_weight;
    }
    public int getProduct_discount() {
        return product_discount;
    }
    public void setProduct_discount(int product_discount) {
        this.product_discount = product_discount;
    }
    public int getProduct_count() {
        return product_count;
    }
    public void setProduct_count(int product_count) {
        this.product_count = product_count;
    }
    public Date getProduct_date() {
        return product_date;
    }
    public void setProduct_date(Date product_date) {
        this.product_date = product_date;
    }
    public int getProduct_stock() {
        return product_stock;
    }
    public void setProduct_stock(int product_stock) {
        this.product_stock = product_stock;
    }
    public String getProduct_expiration_date() {
        return product_expiration_date;
    }
    public void setProduct_expiration_date(String product_expiration_date) {
        this.product_expiration_date = product_expiration_date;
    }
    public String getProduct_handling() {
        return product_handling;
    }
    public void setProduct_handling(String product_handling) {
        this.product_handling = product_handling;
    }
    public String getProduct_material() {
        return product_material;
    }
    public void setProduct_material(String product_material) {
        this.product_material = product_material;
    }
    
    
    
    
    
}
