package com.zx.erpsystem.system.model;

import java.io.Serializable;

/**
 * (SysOffice)实体类
 *
 * @author zhangzhou
 * @since 2020-04-22 19:14:56
 */
public class SysOffice implements Serializable {
    private static final long serialVersionUID = -79685819693459844L;
    /**
    * 机构id
    */
    private Long officeId;
    /**
    * 机构编码
    */
    private String officeCode;
    /**
    * 机构类型（公司：1部门：2小组：3）
    */
    private String officeType;
    /**
    * 构等级（1：一级；2：二级；3：三级；4：四级）
    */
    private String officeGrade;
    /**
    * 联系地址
    */
    private String officeAddress;
    /**
    * 邮政编码
    */
    private String officeZipcode;
    /**
    * 负责人
    */
    private String officeMaster;
    /**
    * 电话
    */
    private String offficePhone;
    /**
    * 传真
    */
    private String officeFax;
    /**
    * 邮箱
    */
    private String officeEmail;
    /**
    * 是否可用（1：是0：否）
    */
    private String officeUseable;
    /**
    * 主负责人
    */
    private String offficeGovernor;
    /**
    * 副负责人
    */
    private String officeDeputyGovernor;
    /**
    * 删除标记（0：正常；1：删除；2：审核）
    */
    private String delFlg;


    public Long getOfficeId() {
        return officeId;
    }

    public void setOfficeId(Long officeId) {
        this.officeId = officeId;
    }

    public String getOfficeCode() {
        return officeCode;
    }

    public void setOfficeCode(String officeCode) {
        this.officeCode = officeCode;
    }

    public String getOfficeType() {
        return officeType;
    }

    public void setOfficeType(String officeType) {
        this.officeType = officeType;
    }

    public String getOfficeGrade() {
        return officeGrade;
    }

    public void setOfficeGrade(String officeGrade) {
        this.officeGrade = officeGrade;
    }

    public String getOfficeAddress() {
        return officeAddress;
    }

    public void setOfficeAddress(String officeAddress) {
        this.officeAddress = officeAddress;
    }

    public String getOfficeZipcode() {
        return officeZipcode;
    }

    public void setOfficeZipcode(String officeZipcode) {
        this.officeZipcode = officeZipcode;
    }

    public String getOfficeMaster() {
        return officeMaster;
    }

    public void setOfficeMaster(String officeMaster) {
        this.officeMaster = officeMaster;
    }

    public String getOffficePhone() {
        return offficePhone;
    }

    public void setOffficePhone(String offficePhone) {
        this.offficePhone = offficePhone;
    }

    public String getOfficeFax() {
        return officeFax;
    }

    public void setOfficeFax(String officeFax) {
        this.officeFax = officeFax;
    }

    public String getOfficeEmail() {
        return officeEmail;
    }

    public void setOfficeEmail(String officeEmail) {
        this.officeEmail = officeEmail;
    }

    public String getOfficeUseable() {
        return officeUseable;
    }

    public void setOfficeUseable(String officeUseable) {
        this.officeUseable = officeUseable;
    }

    public String getOffficeGovernor() {
        return offficeGovernor;
    }

    public void setOffficeGovernor(String offficeGovernor) {
        this.offficeGovernor = offficeGovernor;
    }

    public String getOfficeDeputyGovernor() {
        return officeDeputyGovernor;
    }

    public void setOfficeDeputyGovernor(String officeDeputyGovernor) {
        this.officeDeputyGovernor = officeDeputyGovernor;
    }

    public String getDelFlg() {
        return delFlg;
    }

    public void setDelFlg(String delFlg) {
        this.delFlg = delFlg;
    }

}