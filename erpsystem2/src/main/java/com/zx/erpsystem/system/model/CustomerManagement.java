package com.zx.erpsystem.system.model;

public class CustomerManagement {
    private Integer customerManagementNo;

    private String customerAbbreviation;

    private String customerTel;

    private String customerLinkman;

    private String customerEmail;

    private String customerDepositBank;

    public Integer getCustomerManagementNo() {
        return customerManagementNo;
    }

    public void setCustomerManagementNo(Integer customerManagementNo) {
        this.customerManagementNo = customerManagementNo;
    }

    public String getCustomerAbbreviation() {
        return customerAbbreviation;
    }

    public void setCustomerAbbreviation(String customerAbbreviation) {
        this.customerAbbreviation = customerAbbreviation;
    }

    public String getCustomerTel() {
        return customerTel;
    }

    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
    }

    public String getCustomerLinkman() {
        return customerLinkman;
    }

    public void setCustomerLinkman(String customerLinkman) {
        this.customerLinkman = customerLinkman;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerDepositBank() {
        return customerDepositBank;
    }

    public void setCustomerDepositBank(String customerDepositBank) {
        this.customerDepositBank = customerDepositBank;
    }
}