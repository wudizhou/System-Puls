package com.zx.erpsystem.system.controller;

import com.zx.erpsystem.system.model.ActiveUser;
import com.zx.erpsystem.system.model.Permission;
import com.zx.erpsystem.system.model.Role;
import com.zx.erpsystem.system.model.UserExtend;
import com.zx.erpsystem.system.service.PermissionService;
import com.zx.erpsystem.system.service.RoleService;
import com.zx.erpsystem.system.service.UserExtendService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/mainController")
public class MainController {
    @Autowired
    private PermissionService permissionService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private UserExtendService userExtendService;
//    @Autowired
//    private UserService userService;
//    @Autowired
//    private CustomRealm customRealm;

    /**
     * 主页面
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/main.do")
    public String main(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                       Model model) {
        System.err.println("------------------MainController-------------------------------------------");
        // 一、 从shiro的session中取activeUser
        Subject subject = SecurityUtils.getSubject();
        // 二、 取出身份信息
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        System.out.println("-----------------------------------" + activeUser);
        //--------------------------------------------查询权限------------------------------------------------
        // 登录用户ID
        int userId = activeUser.getUserId();
        System.out.println("-----------------------------------" + userId);
        // 1、查询登录用户的菜单
        List<Permission> menuList = permissionService.queryMenuByUserId(userId);
        // 2、实例化HashMap
        HashMap<Integer, List<Permission>> permissionList = new HashMap<>();
        for (Permission menu : menuList) {
            // 3、菜单下权限列表
            List<Permission> menuDownPermissionList = permissionService
                    .querypermissionByPId_Son(menu.getPerId());
            // 4、 维护父节点和子节点关系
            int pId = menu.getPerId();
            permissionList.put(pId, menuDownPermissionList);
            request.setAttribute("menuList", menuList);
            request.setAttribute("permissionList", permissionList);
        }
        // #############################查询权限#####################################
        // 三、 通过model传到页面
        model.addAttribute("activeUser", activeUser);
        model.addAttribute("message", activeUser.getUsercode());
        Role role = roleService.queryRoleNameByLoginName(activeUser.getUsercode());
        model.addAttribute("roleName",role.getRoleName());
        long upi= userExtendService.queryUserExtendId(activeUser.getUserId());
        UserExtend ue=userExtendService.queryById(upi);
        System.err.println("-----------------------------------" + ue.getPhoto());
        model.addAttribute("imageName",ue.getPhoto());
//        User userGet = userService.queryUserByloginName(activeUser.getName());
//        session.setAttribute("user",userGet);
        //查询该用户角色名
        //登录ip
        String s=MainController.getRemoteAddr(request);
        System.err.println("------------------LoginController-------------------------------------------"+s);
        String s2=userExtendService.queryLoginIp(upi);
        System.err.println("------------------LoginController-------------------------------------------"+s2);
        int n=userExtendService.setOldLoginIp(s2,upi);
        int m= userExtendService.setCurrentLoginIp(s,upi);
//        System.err.println("-----LoginController-----"+ ShiroForMD5.getMD5Password("123","wudizhou"));
//        System.err.println("-----LoginController-----"+ ShiroForMD5.getMD5Password("124","xiaofang"));
//        System.err.println("-----LoginController-----"+ ShiroForMD5.getMD5Password("125","xiaozhang"));
//        System.err.println("-----LoginController-----"+ ShiroForMD5.getMD5Password("126","xiaolong"));
//        System.err.println("-----LoginController-----"+ ShiroForMD5.getMD5Password("127","zhangzhou"));
        return "main";
    }
    /**
     * 登录ip
     * @param request
     * @return
     */
    private static String getRemoteAddr(HttpServletRequest request) {
        String ip = request.getHeader("X-real-ip");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("x-forwarded-for");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }
//    @RequestMapping("/clearShiroCache")
//    public String clearShiroCached(){
//            //清除缓存
//        customRealm.clearCached();
//        return "login";
//        }

  }

