package com.zx.erpsystem.system.model;

import java.sql.Timestamp;
import java.io.Serializable;
import java.util.List;

/**
 * (PurchasingManagement)实体类
 *
 * @author makejava
 * @since 2020-03-27 11:15:50
 */
public class PurchasingManagement implements Serializable {
    private static final long serialVersionUID = 610969800357143231L;
    /**
     * id
     */
    private Long id;
    /**
     * 采购说明
     */
    private String purchaseExplain;
    /**
     * 创建申请时间
     */
    private Timestamp creatTime;
    /**
     * 审核时间
     */
    private Timestamp checkTime;
    /**
     * 审核状态
     */
    private String checkStatus;

    /**
     * 审核说明
     */
    private String checkExplain;
    /**
     * 采购员
     */
    private String buyer;

    private List<PurchaseSublist> commodityList;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPurchaseExplain() {
        return purchaseExplain;
    }

    public void setPurchaseExplain(String purchaseExplain) {
        this.purchaseExplain = purchaseExplain;
    }

    public Timestamp getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(Timestamp creatTime) {
        this.creatTime = creatTime;
    }

    public Timestamp getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Timestamp checkTime) {
        this.checkTime = checkTime;
    }

    public String getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(String checkStatus) {
        this.checkStatus = checkStatus;
    }

    public String getCheckExplain() {
        return checkExplain;
    }

    public void setCheckExplain(String checkExplain) {
        this.checkExplain = checkExplain;
    }

    public String getBuyer() {
        return buyer;
    }

    public void setBuyer(String buyer) {
        this.buyer = buyer;
    }

    public List<PurchaseSublist> getCommodityList() {
        return commodityList;
    }

    public void setCommodityList(List<PurchaseSublist> commodityList) {
        this.commodityList = commodityList;
    }

    @Override
    public String toString() {
        return "PurchasingManagement{" +
                "id=" + id +
                ", purchaseExplain='" + purchaseExplain + '\'' +
                ", creatTime=" + creatTime +
                ", checkTime=" + checkTime +
                ", checkStatus='" + checkStatus + '\'' +
                ", checkExplain='" + checkExplain + '\'' +
                ", buyer='" + buyer + '\'' +
                '}';
    }
}