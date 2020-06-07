package com.zx.erpsystem.system.model;

import java.io.Serializable;

/**
 * (SysArea)实体类
 *
 * @author zhangzhou
 * @since 2020-04-22 19:10:46
 */
public class SysArea implements Serializable {
    private static final long serialVersionUID = -34312506425624547L;
    /**
    * 区域id
    */
    private Long areaId;
    /**
    * 区域编码
    */
    private String areaCode;
    /**
    * 区域名称
    */
    private String areaName;
    /**
    * 区域类型
    */
    private String areaType;
    /**
    * 区域级别
    */
    private String areaLevel;
    /**
    * 上级行政区
    */
    private String superAreaCode;
    /**
    * 删除标记（0：正常；1：删除；2：审核）
    */
    private String delFlg;


    public Long getAreaId() {
        return areaId;
    }

    public void setAreaId(Long areaId) {
        this.areaId = areaId;
    }

    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getAreaType() {
        return areaType;
    }

    public void setAreaType(String areaType) {
        this.areaType = areaType;
    }

    public String getAreaLevel() {
        return areaLevel;
    }

    public void setAreaLevel(String areaLevel) {
        this.areaLevel = areaLevel;
    }

    public String getSuperAreaCode() {
        return superAreaCode;
    }

    public void setSuperAreaCode(String superAreaCode) {
        this.superAreaCode = superAreaCode;
    }

    public String getDelFlg() {
        return delFlg;
    }

    public void setDelFlg(String delFlg) {
        this.delFlg = delFlg;
    }

}