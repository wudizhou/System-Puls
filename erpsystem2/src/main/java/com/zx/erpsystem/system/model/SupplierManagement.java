package com.zx.erpsystem.system.model;

public class SupplierManagement  {
//    private static final long serialVersionUID = 0xc18a2127c8acdb29L;
    private Integer supplierManagementNo;

    private String supplierAbbreviation;

    private String supplierTel;

    private String supplierLinkman;

    private String supplierEmail;
    private String supplierDepositBank;

//    public SupplierManagement() {
//        super();
//        // TODO Auto-generated constructor stub
//    }

    public Integer getSupplierManagementNo() {
        return supplierManagementNo;
    }

    public void setSupplierManagementNo(Integer supplierManagementNo) {
        this.supplierManagementNo = supplierManagementNo;
    }
    public String getSupplierAbbreviation() {
        return supplierAbbreviation;
    }

    public void setSupplierAbbreviation(String supplierAbbreviation) {
        this.supplierAbbreviation = supplierAbbreviation;
    }

    public String getSupplierTel() {
        return supplierTel;
    }

    public void setSupplierTel(String supplierTel) {
        this.supplierTel = supplierTel;
    }

    public String getSupplierLinkman() {
        return supplierLinkman;
    }

    public void setSupplierLinkman(String supplierLinkman) {
        this.supplierLinkman = supplierLinkman;
    }

    public String getSupplierEmail() {
        return supplierEmail;
    }

    public void setSupplierEmail(String supplierEmail) {
        this.supplierEmail = supplierEmail;
    }

    public String getSupplierDepositBank() {
        return supplierDepositBank;
    }

    public void setSupplierDepositBank(String supplierDepositBank) {
        this.supplierDepositBank = supplierDepositBank;
    }
    @Override
    public String toString() {
        return "SupplierManagement [supplierManagementNo=" + supplierManagementNo + ", supplierAbbreviation="
                + supplierAbbreviation + ", supplierTel=" + supplierTel + ", supplierLinkman=" + supplierLinkman
                + ", supplierEmail=" + supplierEmail + ", supplierDepositBank=" + supplierDepositBank + "]";
    }

}
