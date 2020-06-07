package com.zx.erpsystem.system.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class ProductWarehousingManagement {
    private Integer productStorageOrdersNo;

    private String productName;

    private String productCategory;

    private Integer productStorageQuantity;

    private String storageStaff;

    private String productStorageStatus;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date productStorageDate;

    public Integer getProductStorageOrdersNo() {
        return productStorageOrdersNo;
    }

    public void setProductStorageOrdersNo(Integer productStorageOrdersNo) {
        this.productStorageOrdersNo = productStorageOrdersNo;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public Integer getProductStorageQuantity() {
        return productStorageQuantity;
    }

    public void setProductStorageQuantity(Integer productStorageQuantity) {
        this.productStorageQuantity = productStorageQuantity;
    }

    public String getStorageStaff() {
        return storageStaff;
    }

    public void setStorageStaff(String storageStaff) {
        this.storageStaff = storageStaff;
    }

    public String getProductStorageStatus() {
        return productStorageStatus;
    }

    public void setProductStorageStatus(String productStorageStatus) {
        this.productStorageStatus = productStorageStatus;
    }

    public Date getProductStorageDate() {
        return productStorageDate;
    }

    public void setProductStorageDate(Date productStorageDate) {
        this.productStorageDate = productStorageDate;
    }
}