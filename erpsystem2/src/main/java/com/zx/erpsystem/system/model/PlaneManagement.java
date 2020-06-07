package com.zx.erpsystem.system.model;

public class PlaneManagement {
    private Integer projectNo;

    private String productName;

    private Integer plannedOutput;

    private String productionMonths;

    private Integer actualOutput;

    public Integer getProjectNo() {
        return projectNo;
    }

    public void setProjectNo(Integer projectNo) {
        this.projectNo = projectNo;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getPlannedOutput() {
        return plannedOutput;
    }

    public void setPlannedOutput(Integer plannedOutput) {
        this.plannedOutput = plannedOutput;
    }

    public String getProductionMonths() {
        return productionMonths;
    }

    public void setProductionMonths(String productionMonths) {
        this.productionMonths = productionMonths;
    }

    public Integer getActualOutput() {
        return actualOutput;
    }

    public void setActualOutput(Integer actualOutput) {
        this.actualOutput = actualOutput;
    }
}