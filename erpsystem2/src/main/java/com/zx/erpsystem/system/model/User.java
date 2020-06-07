package com.zx.erpsystem.system.model;

import java.io.Serializable;

public class User implements Serializable {
    private Integer userId;

    private Integer userRoleId;

    private String loginName;

    private String password;

    public User(Integer userId, Integer userRoleId, String loginName, String password) {
        this.userId = userId;
        this.userRoleId = userRoleId;
        this.loginName = loginName;
        this.password = password;
    }

    public User() {
    }
//    private boolean rememberMe;

//    public boolean getRememberMe() {
//        return rememberMe;
//    }
//    public void setRememberMe(boolean rememberMe) {
//        this.rememberMe = rememberMe;
//    }
    public Integer getUserId() {
        return userId;
    }
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(Integer userRoleId) {
        this.userRoleId = userRoleId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User [userId=" + userId + ",loginName=" + loginName + ", password=" + password + "]";
    }
}