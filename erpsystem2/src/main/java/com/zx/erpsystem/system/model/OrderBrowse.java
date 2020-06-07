package com.zx.erpsystem.system.model;

import java.io.Serializable;

/**
 * (OrderBrowse)实体类
 *
 * @author makejava
 * @since 2020-04-08 08:56:58
 */
public class OrderBrowse implements Serializable {
    private static final long serialVersionUID = -50693960540578538L;
    
    private Integer orderNo;
    
    private String placingCustomer;
    
    private String productName;
    
    private Integer orderQuantity;
    
    private String orderStatus;


    public Integer getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    public String getPlacingCustomer() {
        return placingCustomer;
    }

    public void setPlacingCustomer(String placingCustomer) {
        this.placingCustomer = placingCustomer;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getOrderQuantity() {
        return orderQuantity;
    }

    public void setOrderQuantity(Integer orderQuantity) {
        this.orderQuantity = orderQuantity;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

}