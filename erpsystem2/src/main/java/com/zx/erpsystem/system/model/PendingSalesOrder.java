package com.zx.erpsystem.system.model;

public class PendingSalesOrder {
    private Integer staySalesOrderNo;

    private String productName;

    private String customerName;

    private Integer salesQuantity;

    public Integer getStaySalesOrderNo() {
        return staySalesOrderNo;
    }

    public void setStaySalesOrderNo(Integer staySalesOrderNo) {
        this.staySalesOrderNo = staySalesOrderNo;
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
}