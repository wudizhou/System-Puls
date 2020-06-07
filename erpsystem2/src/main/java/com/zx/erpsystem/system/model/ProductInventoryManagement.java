package com.zx.erpsystem.system.model;

public class ProductInventoryManagement {
    private Integer productInventoryNo;

    private String productName;

    private Double productPrice;

    private Integer productInventoryQuantity;

    private String productCategory;

    public Integer getProductInventoryNo() {
        return productInventoryNo;
    }

    public void setProductInventoryNo(Integer productInventoryNo) {
        this.productInventoryNo = productInventoryNo;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public Integer getProductInventoryQuantity() {
        return productInventoryQuantity;
    }

    public void setProductInventoryQuantity(Integer productInventoryQuantity) {
        this.productInventoryQuantity = productInventoryQuantity;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }
}