package com.zx.erpsystem.system.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

/**
 * @author Zhang Zhou
 * @date 2020-03-18 13:55
 */
public class SalesOutboundManagement {

    private Integer saleOutboundDeliveryOrderNo;
    private String productName;
    private String customerName;
    private String salesStaff;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date productOutboundDeliveryDate;
    private Integer productOutboundDeliveryQuantity;

    public void setSaleOutboundDeliveryOrderNo(Integer saleOutboundDeliveryOrderNo) {
        this.saleOutboundDeliveryOrderNo = saleOutboundDeliveryOrderNo;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public void setSalesStaff(String salesStaff) {
        this.salesStaff = salesStaff;
    }

    public void setProductOutboundDeliveryDate(Date productOutboundDeliveryDate) {
        this.productOutboundDeliveryDate = productOutboundDeliveryDate;
    }

    public void setProductOutboundDeliveryQuantity(Integer productOutboundDeliveryQuantity) {
        this.productOutboundDeliveryQuantity = productOutboundDeliveryQuantity;
    }

    public Integer getSaleOutboundDeliveryOrderNo() {
        return saleOutboundDeliveryOrderNo;
    }

    public String getProductName() {
        return productName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public String getSalesStaff() {
        return salesStaff;
    }

    public Date getProductOutboundDeliveryDate() {
        return productOutboundDeliveryDate;
    }

    public Integer getProductOutboundDeliveryQuantity() {
        return productOutboundDeliveryQuantity;
    }
}
