package com.zx.erpsystem.system.model;

import java.util.HashMap;
import java.util.List;

/**
 * <p>
 * 用户身份信息:<br>
 * 存入session 由于tomcat将session会序列化在本地硬盘上，<br>
 * 所以使用Serializable接口<br>
 * </p>
 */
public class ActiveUser implements java.io.Serializable {
    /**  */
    private static final long serialVersionUID = -4500748422849176791L;
    /** 用户id（主键） */
    private int userId;
    /** 用户账号 */
    private String usercode;
    /** 用户名称 */
    private String name;
    /** 权限 */
    private String password;
    // ##########################################
    /** 菜单 */
    private List<Permission> menus;
    /** 权限 */
    private List<Permission> permissions;
    // ##########################################
    /** 权限子组 */
    private HashMap<Integer, List<Permission>> permissionsMap;
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password=password;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Permission> getMenus() {
        return menus;
    }

    public void setMenus(List<Permission> menus) {
        this.menus = menus;
    }

    public List<Permission> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<Permission> permissions) {
        this.permissions = permissions;
    }

    public HashMap<Integer, List<Permission>> getPermissionsMap() {
        return permissionsMap;
    }

    public void setPermissionsMap(HashMap<Integer, List<Permission>> permissionsMap) {
        this.permissionsMap = permissionsMap;
    }

    @Override
    public String toString() {
        return "ActiveUser [userId=" + userId + ", usercode=" + usercode + ", name=" + name + ", menus="
                + menus + ", permissions=" + permissions + ", permissionsMap=" + permissionsMap + "]";
    }

}
