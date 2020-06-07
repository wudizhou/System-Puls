package com.zx.erpsystem.system.model;

import java.sql.Timestamp;

public class ProductRegistration {
    private Long productionNo;

    private String productName;

    private Integer productionQuantity;

    private Timestamp producedDate;

    private String productionStatus;

    public Long getProductionNo() {
        return productionNo;
    }

    public void setProductionNo(Long productionNo) {
        this.productionNo = productionNo;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getProductionQuantity() {
        return productionQuantity;
    }

    public void setProductionQuantity(Integer productionQuantity) {
        this.productionQuantity = productionQuantity;
    }

    public Timestamp getProducedDate() {
        return producedDate;
    }

    public void setProducedDate(Timestamp producedDate) {
        this.producedDate = producedDate;
    }

    public String getProductionStatus() {
        return productionStatus;
    }

    public void setProductionStatus(String productionStatus) {
        this.productionStatus = productionStatus;
    }

    @Override
    public String toString() {
        return "ProductRegistration{" +
                "productionNo=" + productionNo +
                ", productName='" + productName + '\'' +
                ", productionQuantity=" + productionQuantity +
                ", producedDate=" + producedDate +
                ", productionStatus='" + productionStatus + '\'' +
                '}';
    }
}