package com.zx.erpsystem.system.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

public class PickingOutboundManagement implements Serializable {
    private static final long serialVersionUID = 2L;
    private Integer pickingOutboundDeliveryOrderNo;

    private String commodityName;

    private String supplier;

    private String procurementStaff;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date commodityOutboundDeliveryDate;

    private Integer commodityOutboundDeliveryQuantity;

    public Integer getPickingOutboundDeliveryOrderNo() {
        return pickingOutboundDeliveryOrderNo;
    }

    public void setPickingOutboundDeliveryOrderNo(Integer pickingOutboundDeliveryOrderNo) {
        this.pickingOutboundDeliveryOrderNo = pickingOutboundDeliveryOrderNo;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getProcurementStaff() {
        return procurementStaff;
    }

    public void setProcurementStaff(String procurementStaff) {
        this.procurementStaff = procurementStaff;
    }

    public Date getCommodityOutboundDeliveryDate() {
        return commodityOutboundDeliveryDate;
    }

    public void setCommodityOutboundDeliveryDate(Date commodityOutboundDeliveryDate) {
        this.commodityOutboundDeliveryDate = commodityOutboundDeliveryDate;
    }

    public Integer getCommodityOutboundDeliveryQuantity() {
        return commodityOutboundDeliveryQuantity;
    }

    public void setCommodityOutboundDeliveryQuantity(Integer commodityOutboundDeliveryQuantity) {
        this.commodityOutboundDeliveryQuantity = commodityOutboundDeliveryQuantity;
    }
}