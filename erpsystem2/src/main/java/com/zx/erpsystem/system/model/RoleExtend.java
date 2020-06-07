package com.zx.erpsystem.system.model;

import java.io.Serializable;

/**
 * (RoleExtend)实体类
 *
 * @author zhangzhou
 * @since 2020-04-22 19:12:11
 */
public class RoleExtend implements Serializable {
    private static final long serialVersionUID = -66131199747019774L;
    /**
    * 角色扩展id
    */
    private Long roleExtendId;
    /**
    * 角色id
    */
    private Integer roleId;
    /**
    * 外键
    */
    private Long roleFkId;
    /**
    * 角色英文名称
    */
    private String enname;
    /**
    * 数据范围（1：所有数据；2：所在公司及以下数据；3：所在公司数据；4：所在部门及以下数据；5：所在部门数据；8：仅本人数据；9：按明细设置）
    */
    private String dataScope;
    /**
    * 原先名称
    */
    private String oldName;
    /**
    * 原先英文名称
    */
    private String oldEname;
    /**
    * 是否是系统数据（是：1否：0）
    */
    private String sysData;
    /**
    * 是否可用（是：1否：0）
    */
    private String useable;
    /**
    * 删除标记（0：正常；1：删除；2：审核）
    */
    private String delFlg;


    public Long getRoleExtendId() {
        return roleExtendId;
    }

    public void setRoleExtendId(Long roleExtendId) {
        this.roleExtendId = roleExtendId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Long getRoleFkId() {
        return roleFkId;
    }

    public void setRoleFkId(Long roleFkId) {
        this.roleFkId = roleFkId;
    }

    public String getEnname() {
        return enname;
    }

    public void setEnname(String enname) {
        this.enname = enname;
    }

    public String getDataScope() {
        return dataScope;
    }

    public void setDataScope(String dataScope) {
        this.dataScope = dataScope;
    }

    public String getOldName() {
        return oldName;
    }

    public void setOldName(String oldName) {
        this.oldName = oldName;
    }

    public String getOldEname() {
        return oldEname;
    }

    public void setOldEname(String oldEname) {
        this.oldEname = oldEname;
    }

    public String getSysData() {
        return sysData;
    }

    public void setSysData(String sysData) {
        this.sysData = sysData;
    }

    public String getUseable() {
        return useable;
    }

    public void setUseable(String useable) {
        this.useable = useable;
    }

    public String getDelFlg() {
        return delFlg;
    }

    public void setDelFlg(String delFlg) {
        this.delFlg = delFlg;
    }

}