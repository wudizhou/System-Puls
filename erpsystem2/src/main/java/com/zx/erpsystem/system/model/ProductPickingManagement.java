package com.zx.erpsystem.system.model;

import java.util.Date;

public class ProductPickingManagement {
    private Integer pickingOrdersNo;

    private String commodityName;

    private Integer pickingQuantity;

    private Date pickingDate;

    private String productPickingStatus;

    public Integer getPickingOrdersNo() {
        return pickingOrdersNo;
    }

    public void setPickingOrdersNo(Integer pickingOrdersNo) {
        this.pickingOrdersNo = pickingOrdersNo;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName;
    }

    public Integer getPickingQuantity() {
        return pickingQuantity;
    }

    public void setPickingQuantity(Integer pickingQuantity) {
        this.pickingQuantity = pickingQuantity;
    }

    public Date getPickingDate() {
        return pickingDate;
    }

    public void setPickingDate(Date pickingDate) {
        this.pickingDate = pickingDate;
    }

    public String getProductPickingStatus() {
        return productPickingStatus;
    }

    public void setProductPickingStatus(String productPickingStatus) {
        this.productPickingStatus = productPickingStatus;
    }
}