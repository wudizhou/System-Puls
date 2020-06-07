package com.zx.erpsystem.system.model;

public class CommodityInventoryManagement {
    private Integer commodityInventoryNo;

    private String commodityName;

    private Double commodityPrice;

    private Integer commodityInventoryQuantity;

    private String supplier;

    private String procurementStaff;

    private String commodityCategory;

    public Integer getCommodityInventoryNo() {
        return commodityInventoryNo;
    }

    public void setCommodityInventoryNo(Integer commodityInventoryNo) {
        this.commodityInventoryNo = commodityInventoryNo;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName;
    }

    public Double getCommodityPrice() {
        return commodityPrice;
    }

    public void setCommodityPrice(Double commodityPrice) {
        this.commodityPrice = commodityPrice;
    }

    public Integer getCommodityInventoryQuantity() {
        return commodityInventoryQuantity;
    }

    public void setCommodityInventoryQuantity(Integer commodityInventoryQuantity) {
        this.commodityInventoryQuantity = commodityInventoryQuantity;
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

    public String getCommodityCategory() {
        return commodityCategory;
    }

    public void setCommodityCategory(String commodityCategory) {
        this.commodityCategory = commodityCategory;
    }
}