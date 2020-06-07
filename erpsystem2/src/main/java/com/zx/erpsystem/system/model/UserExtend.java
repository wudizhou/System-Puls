package com.zx.erpsystem.system.model;

import java.io.Serializable;
import java.util.Date;

/**
 * (UserExtend)实体类
 *
 * @author zhangzhou
 * @since 2020-04-22 19:10:47
 */
public class UserExtend implements Serializable {
    private static final long serialVersionUID = 160062717744444655L;
    /**
    * 用户扩展信息表
    */
    private Long userExtendId;
    /**
    * 用户id
    */
    private Integer userId;
    /**
    * 删除标记（0：正常；1：删除；2：审核）
    */
    private String delFlg;
    /**
    * 用户当前审核状态（未审核：1待审核：2已审核成功：3已审核失败：4）
    */
    private String userAuditStatus;
    /**
    * 归属公司
    */
    private String company;
    /**
    * 归属部门名称
    */
    private String officeName;
    /**
    * 工号
    */
    private String no;
    /**
    * 姓名
    */
    private String name;
    /**
    * 邮箱
    */
    private String email;
    /**
    * 电话
    */
    private String phone;
    /**
    * 手机
    */
    private String mobile;
    /**
    * 用户类型
    */
    private String userType;
    /**
    * 最后登录ip
    */
    private String loginIp;
    /**
    * 最后登录日期
    */
    private Date loginDate;
    /**
    * 是否运行登录（是：1否：0）
    */
    private String loginFlg;
    /**
    * 头像
    */
    private String photo;
    /**
    * 原登陆名
    */
    private String oldLoginName;
    /**
    * 新密码
    */
    private String newPassword;
    /**
    * 上次登录ip
    */
    private String oldLoginIp;
    /**
    * 上次登录日期
    */
    private Date oldLoginDate;


    public Long getUserExtendId() {
        return userExtendId;
    }

    public void setUserExtendId(Long userExtendId) {
        this.userExtendId = userExtendId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getDelFlg() {
        return delFlg;
    }

    public void setDelFlg(String delFlg) {
        this.delFlg = delFlg;
    }

    public String getUserAuditStatus() {
        return userAuditStatus;
    }

    public void setUserAuditStatus(String userAuditStatus) {
        this.userAuditStatus = userAuditStatus;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getOfficeName() {
        return officeName;
    }

    public void setOfficeName(String officeName) {
        this.officeName = officeName;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }

    public Date getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    public String getLoginFlg() {
        return loginFlg;
    }

    public void setLoginFlg(String loginFlg) {
        this.loginFlg = loginFlg;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getOldLoginName() {
        return oldLoginName;
    }

    public void setOldLoginName(String oldLoginName) {
        this.oldLoginName = oldLoginName;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getOldLoginIp() {
        return oldLoginIp;
    }

    public void setOldLoginIp(String oldLoginIp) {
        this.oldLoginIp = oldLoginIp;
    }

    public Date getOldLoginDate() {
        return oldLoginDate;
    }

    public void setOldLoginDate(Date oldLoginDate) {
        this.oldLoginDate = oldLoginDate;
    }

}