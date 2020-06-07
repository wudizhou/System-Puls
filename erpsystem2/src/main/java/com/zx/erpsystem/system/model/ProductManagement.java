package com.zx.erpsystem.system.model;

public class ProductManagement {
    private Integer productManagementNo;

    private String productName;

    private String productOriginAddress;

    private String productUnit;

    private String productSpecification;

    private String productBatchNumber;

    public Integer getProductManagementNo() {
        return productManagementNo;
    }

    public void setProductManagementNo(Integer productManagementNo) {
        this.productManagementNo = productManagementNo;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductOriginAddress() {
        return productOriginAddress;
    }

    public void setProductOriginAddress(String productOriginAddress) {
        this.productOriginAddress = productOriginAddress;
    }

    public String getProductUnit() {
        return productUnit;
    }

    public void setProductUnit(String productUnit) {
        this.productUnit = productUnit;
    }

    public String getProductSpecification() {
        return productSpecification;
    }

    public void setProductSpecification(String productSpecification) {
        this.productSpecification = productSpecification;
    }

    public String getProductBatchNumber() {
        return productBatchNumber;
    }

    public void setProductBatchNumber(String productBatchNumber) {
        this.productBatchNumber = productBatchNumber;
    }
}