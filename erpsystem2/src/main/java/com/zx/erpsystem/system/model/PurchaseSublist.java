package com.zx.erpsystem.system.model;

import org.springframework.stereotype.Service;

import java.io.Serializable;

/**
 * (PurchaseSublist)实体类
 *
 * @author makejava
 * @since 2020-03-27 11:17:40
 */
public class PurchaseSublist implements Serializable {
    private static final long serialVersionUID = 425622355057749785L;
    /**
     * id
     */
    private Long id;
    /**
     * 采购商品编号
     */
    private Long purchaseId;
    /**
     * 采购商品名称
     */
    private String commodityName;
    /**
     * 数量
     */
    private Integer commodityQuality;
    /**
     * 价格
     */
    private Double commodityPrice;
    /**
     * 类别
     */
    private String commodityType;
    /**
     * 供应商
     */
    private String supplier;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Long purchaseId) {
        this.purchaseId = purchaseId;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName;
    }

    public Integer getCommodityQuality() {
        return commodityQuality;
    }

    public void setCommodityQuality(Integer commodityQuality) {
        this.commodityQuality = commodityQuality;
    }

    public Double getCommodityPrice() {
        return commodityPrice;
    }

    public void setCommodityPrice(Double commodityPrice) {
        this.commodityPrice = commodityPrice;
    }

    public String getCommodityType() {
        return commodityType;
    }

    public void setCommodityType(String commodityType) {
        this.commodityType = commodityType;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    @Override
    public String toString() {
        return "PurchaseSublist{" +
                "id=" + id +
                ", purchaseId=" + purchaseId +
                ", commodityName='" + commodityName + '\'' +
                ", commodityQuality=" + commodityQuality +
                ", commodityPrice=" + commodityPrice +
                ", commodityType='" + commodityType + '\'' +
                ", supplier='" + supplier + '\'' +
                '}';
    }
}