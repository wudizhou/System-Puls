package com.zx.erpsystem.system.model;

import java.util.Date;

public class SalesStatement {
    private Integer salesOrderNo;

    private String productName;

    private String customerName;

    private Double salesMoney;

    private Date saleCounterDate;

    private Integer purchaseQuantity;

    public Integer getSalesOrderNo() {
        return salesOrderNo;
    }

    public void setSalesOrderNo(Integer salesOrderNo) {
        this.salesOrderNo = salesOrderNo;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public Double getSalesMoney() {
        return salesMoney;
    }

    public void setSalesMoney(Double salesMoney) {
        this.salesMoney = salesMoney;
    }

    public Date getSaleCounterDate() {
        return saleCounterDate;
    }

    public void setSaleCounterDate(Date saleCounterDate) {
        this.saleCounterDate = saleCounterDate;
    }

    public Integer getPurchaseQuantity() {
        return purchaseQuantity;
    }

    public void setPurchaseQuantity(Integer purchaseQuantity) {
        this.purchaseQuantity = purchaseQuantity;
    }
}