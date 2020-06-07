package com.zx.erpsystem.system.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class PurchaseWarehousingManagement {
    private Integer purchaseStorageOrdersNo;

    private String commodityName;

    private Integer commodityStorageQuantity;

    private String supplier;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date commodityStorageDate;

    private String storageStaff;

    private String commodityCategory;

    private String commodityStorageStatus;

    public Integer getPurchaseStorageOrdersNo() {
        return purchaseStorageOrdersNo;
    }

    public void setPurchaseStorageOrdersNo(Integer purchaseStorageOrdersNo) {
        this.purchaseStorageOrdersNo = purchaseStorageOrdersNo;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName;
    }

    public Integer getCommodityStorageQuantity() {
        return commodityStorageQuantity;
    }

    public void setCommodityStorageQuantity(Integer commodityStorageQuantity) {
        this.commodityStorageQuantity = commodityStorageQuantity;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public Date getCommodityStorageDate() {
        return commodityStorageDate;
    }

    public void setCommodityStorageDate(Date commodityStorageDate) {
        this.commodityStorageDate = commodityStorageDate;
    }

    public String getStorageStaff() {
        return storageStaff;
    }

    public void setStorageStaff(String storageStaff) {
        this.storageStaff = storageStaff;
    }

    public String getCommodityCategory() {
        return commodityCategory;
    }

    public void setCommodityCategory(String commodityCategory) {
        this.commodityCategory = commodityCategory;
    }

    public String getCommodityStorageStatus() {
        return commodityStorageStatus;
    }

    public void setCommodityStorageStatus(String commodityStorageStatus) {
        this.commodityStorageStatus = commodityStorageStatus;
    }
}