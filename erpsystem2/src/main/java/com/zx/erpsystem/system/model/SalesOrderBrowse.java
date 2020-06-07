package com.zx.erpsystem.system.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class SalesOrderBrowse {
    private Integer salesOrderNo;

    private String productName;

    private String customerName;

    private Integer salesQuantity;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date salesDate;

    private String salesStatus;

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

    public Integer getSalesQuantity() {
        return salesQuantity;
    }

    public void setSalesQuantity(Integer salesQuantity) {
        this.salesQuantity = salesQuantity;
    }

    public Date getSalesDate() {
        return salesDate;
    }

    public void setSalesDate(Date salesDate) {
        this.salesDate = salesDate;
    }

    public String getSalesStatus() {
        return salesStatus;
    }

    public void setSalesStatus(String salesStatus) {
        this.salesStatus = salesStatus;
    }
}