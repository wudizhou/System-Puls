package com.zx.erpsystem.system.model;

import java.util.Date;

public class PurchaseStatement {
    private Integer purchaseCounterNo;

    private String commodityName;

    private Integer purchaseQuantity;

    private Double purchaseMoney;

    private String purchaseNo;

    private Date purchaseCounterDate;

    public Integer getPurchaseCounterNo() {
        return purchaseCounterNo;
    }

    public void setPurchaseCounterNo(Integer purchaseCounterNo) {
        this.purchaseCounterNo = purchaseCounterNo;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName;
    }

    public Integer getPurchaseQuantity() {
        return purchaseQuantity;
    }

    public void setPurchaseQuantity(Integer purchaseQuantity) {
        this.purchaseQuantity = purchaseQuantity;
    }

    public Double getPurchaseMoney() {
        return purchaseMoney;
    }

    public void setPurchaseMoney(Double purchaseMoney) {
        this.purchaseMoney = purchaseMoney;
    }

    public String getPurchaseNo() {
        return purchaseNo;
    }

    public void setPurchaseNo(String purchaseNo) {
        this.purchaseNo = purchaseNo;
    }

    public Date getPurchaseCounterDate() {
        return purchaseCounterDate;
    }

    public void setPurchaseCounterDate(Date purchaseCounterDate) {
        this.purchaseCounterDate = purchaseCounterDate;
    }
}