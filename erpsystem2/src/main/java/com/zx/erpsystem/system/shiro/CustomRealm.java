package com.zx.erpsystem.system.shiro;

import com.zx.erpsystem.system.model.ActiveUser;
import com.zx.erpsystem.system.model.User;
import com.zx.erpsystem.system.service.PermissionService;
import com.zx.erpsystem.system.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 自定义realm
 * </p>
 */
@Repository
public class CustomRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;
    @Autowired
    private PermissionService permissionService;


    // 设置realm的名称
    @Override
    public void setName(String name) {
        super.setName("customRealm");
    }
    // 认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token)
            throws AuthenticationException {
        // ---->第一步从token中取出身份信:token是用户输入的
        // username==loginName
        String loginName = (String) token.getPrincipal();
        // 1. 把AuthenticationToken 转换为UsernamePasswordToken
        UsernamePasswordToken up = (UsernamePasswordToken) token;
        User user_db = null;
        try {
            // 第二步（查询数据库）:根据用户输入的userCode从查询数据库
            user_db =userService.queryUserByloginName(loginName);
            System.err.println("------------------------"+user_db);
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 如果查询不到返回null
        if (user_db == null) {
            return null;
        }
        // 从数据库查询到密码
        String password = user_db.getPassword();
        //采用MD5加密
        ByteSource credenttialsSalt = ByteSource.Util.bytes(user_db.getLoginName());
        // ------>设置用户
//        String encodeStr = null;
//        try {
//            encodeStr = URLEncoder.encode(loginName, "utf-8");
//        } catch (UnsupportedEncodingException e) {
//            e.printStackTrace();
//        }
        ActiveUser activeUser = new ActiveUser();
        activeUser.setUserId(user_db.getUserId());
        activeUser.setUsercode(loginName);
        activeUser.setPassword(password);
        System.err.println(password);
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(activeUser,
                password,credenttialsSalt, this.getName());
        return simpleAuthenticationInfo;
    }

    // 授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        // 从 principals获取主身份信息
        // 将getPrimaryPrincipal方法返回值转为真实身份类型
        // （在上边的doGetAuthenticationInfo认证通过填充到SimpleAuthenticationInfo中身份类型），
        ActiveUser activeUser = (ActiveUser) principals.getPrimaryPrincipal();
        System.err.println("-----------AuthorizationInfo-------------");
        System.err.println("------------------------"+activeUser);

        // 根据身份信息获取权限信息
        // 从数据库获取到权限数据
        // ------>...
        List<String> permissions =permissionService.queryPerUrl(activeUser.getUsercode());
//        List<String> permissions = new ArrayList<String>();
//        permissions.add("user:userlist");// 用户列表
//        permissions.add("customer:add  ");// 用户增加
        //用户管理权限
//        permissions.add("sys:user:update");
//        permissions.add("sys:user:add");
//        permissions.add("sys:user:delete");
        // ....

        // 查到权限数据，返回授权信息(要包括 上边的permissions)
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        // 将上边查询到授权信息填充到simpleAuthorizationInfo对象中
        simpleAuthorizationInfo.addStringPermissions(permissions);
        return simpleAuthorizationInfo;
    }
    //清除缓存
//    public void clearCached(){
//        PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
//        System.err.println("------------------------"+principals.toString());
//        super.clearCache(principals);
//    }


}
