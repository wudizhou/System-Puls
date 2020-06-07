package com.zx.erpsystem.system.controller.system;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.model.*;
import com.zx.erpsystem.system.service.PermissionService;
import com.zx.erpsystem.system.service.RoleService;
import com.zx.erpsystem.system.service.UserExtendService;
import com.zx.erpsystem.system.service.UserService;
import com.zx.erpsystem.system.utils.md5.ShiroForMD5;
import com.zx.erpsystem.system.utils.util.IdGenerator;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.UUID;

/**
 * 私人信息设置
 * @author Zhang Zhou
 * @date 2020-05-10 10:07
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/personController")
public class PersonController {
    @Autowired
    UserExtendService userExtendService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private PermissionService permissionService;
    @Autowired
    private UserService userService;
    private static final String MAIN = "main";

    /**
     * 1)验证传入的图片非空
     * (2)定义图片的存储路径 realPath
     * (3)得到原始图片名：xxoo.jpg
     * (4)创建新的唯一图片名 = uuidName + .扩展名 9d76abf6-2702-4d18-881d-4e151b5445f3.jpg
     * (5)封装上传的文件将要存储的 全路径 = 路径 + 文件名
     * C:\java\ide-workspace\project-a\pa-web\target\pa-web\libs\img\9d76abf6-2702-4d18-881d-4e151b5445f3.jpg
     * (6)把图片文件转移至 全路径
     * (7)返回新图片名 newImageName
     *
     * @param file
     * @param userExtend
     * @param request
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/savePrivateMessage.do")
    public String savePrivateMessage(@RequestParam("zphoto") MultipartFile file, UserExtend userExtend, HttpServletRequest request, Model model) throws IOException {
        //判断文件是否存在
        System.err.println("--------savePrivateMessage-------------" + file);
        // 一、 从shiro的session中取activeUser
        Subject subject = SecurityUtils.getSubject();
        // 二、 取出身份信息
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        if (!file.isEmpty()) {
            //得到原始名
            String originalFilename = file.getOriginalFilename();
            //这里是上传到Tomcat的发布路径下面,反正很长，也不是我想要的保存到磁盘上某个位置
            //这个最后再来说改上传位置的问题，哈哈哈
            //F:\Java neon_demo\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\news....
//            String dirPath = request.getServletContext().getRealPath("/upload/");
            String dirPath = "D:\\erpfile\\images\\";
            File filePath = new File(dirPath);
            // 不存在则创建
            if (!filePath.exists()) {
                filePath.mkdirs();
            }
            // 使用UUID命名
            String newFilename = UUID.randomUUID() + "_" + originalFilename;
            file.transferTo(new File(dirPath + newFilename));
            long upi = userExtendService.queryUserExtendId(activeUser.getUserId());
            userExtend.setUserExtendId(upi);
            userExtend.setPhoto(newFilename);
            userExtend.setPhone(request.getParameter("zphone"));
            userExtend.setEmail(request.getParameter("zemail"));
            userExtend.setMobile(request.getParameter("zmobile"));
            int rows = this.userExtendService.savePrivateMessage(userExtend);
            System.err.println("rows=" + rows);
            model.addAttribute("activeUser", activeUser);
            model.addAttribute("message", activeUser.getUsercode());
            Role role = roleService.queryRoleNameByLoginName(activeUser.getUsercode());
            model.addAttribute("roleName", role.getRoleName());
            UserExtend ue = userExtendService.queryById(upi);
            System.err.println("---------------savePrivateMessage--------------------" + ue.getPhoto());
            model.addAttribute("imageName", ue.getPhoto());
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
            return MAIN;
        } else {
            return MAIN;
        }
    }

    /**
     * 修改密码
     *
     * @param account
     * @return
     */
    @RequestMapping(value = "/updatepassword.do", method = RequestMethod.POST)
    public String updatepassword(String account, HttpServletRequest request) {
        System.err.println(account+"------"+request.getParameter("password"));
        User user = new User();
        UserExtend userExtend = new UserExtend();
        SimpleHash pasword1 = ShiroForMD5.getMD5Password(request.getParameter("password"), account);
        String pasword2 = String.valueOf(pasword1);
        user.setPassword(pasword2);
        user.setLoginName(account);
        userExtend.setNewPassword(pasword2);
        System.err.println(userService.queryUserByloginName(account).getUserId());
        userExtend.setUserId(userService.queryUserByloginName(account).getUserId());
        int n = userService.updatepassword(user);
        int n1 =userExtendService.updateNewPaasord(userExtend);
        return "login";
    }

    /**
     * 注册
     * @param request
     * @return
     */
    @RequestMapping(value = "/adduser.do", method = RequestMethod.POST)
     public String addUser (HttpServletRequest request){
        Random rand = new Random();
        User user = new User();
        user.setUserId(rand.nextInt(100000000));
        user.setPassword(String.valueOf(ShiroForMD5.getMD5Password(request.getParameter("password2"), request.getParameter("account2"))));
        user.setLoginName(request.getParameter("account2"));
        userService.addUser(user);
        UserExtend userExtend = new UserExtend();
        userExtend.setUserExtendId(IdGenerator.getId());
        userExtend.setUserId(user.getUserId());
        userExtend.setName(request.getParameter("name"));
        userExtend.setNewPassword(user.getPassword());
        userExtend.setPhone(request.getParameter("phone"));
        userExtend.setMobile(request.getParameter("mobile"));
        userExtend.setEmail(request.getParameter("email2"));
        userExtendService.insert(userExtend);
        return "login";
     }
    /**
     * 查询是否有用户
     * @param loginName
     * @return
     */
    @RequestMapping(value = "/finduser.do",method = RequestMethod.GET)
    public @ResponseBody JSONObject findUser(String loginName) {
        System.err.println("----finduser----"+loginName);
        User u = userService.queryUserByloginName(loginName);
        String success = "success";
        String Isfalse = "false";
        JSONObject jsonObject = new JSONObject();
        if (u!= null) {
            jsonObject.put("success",success);
            return jsonObject;
        } else {
            jsonObject.put("false",Isfalse);
            return  jsonObject;
        }
    }

    /**
     * 查询是否有该邮件记录
     *
     * @param email
     * @return
     */
    @RequestMapping(value = "/checkemail.do", method = RequestMethod.GET)
    public @ResponseBody JSONObject checkemail(String email) {
        System.err.println(email);
        List<UserExtend> checkemail = userExtendService.queryByEmail(email);
        System.err.println(checkemail.size());
        String success = "success";
        String Isfalse = "false";
        JSONObject jsonObject = new JSONObject();
        if (checkemail.size() != 0) {
            jsonObject.put("success",success);
            return jsonObject;
        } else {
            jsonObject.put("false",Isfalse);
            return  jsonObject;
        }

    }

    /**
     * 验证码比对
     *
     * @param httpSession
     * @param captcha
     * @return
     */
    @RequestMapping(value = "/checkcaptcha.do",method =  RequestMethod.GET)
    public @ResponseBody
    JSONObject checkcaptcha(HttpSession httpSession, @RequestParam String captcha) {
        String captcha1 = (String) httpSession.getAttribute("Captcha");
        System.err.println("-----checkcaptcha-------"+captcha1);
        String success = "success";
        String Isfalse = "false";
        JSONObject jsonObject = new JSONObject();
        if (captcha.equals(captcha1)) {
            jsonObject.put("success",success);
            return jsonObject;
        } else {
            jsonObject.put("false",Isfalse);
            return  jsonObject;
        }
    }

    /**
     * 删除验证码
     *
     * @param httpSession
     */
    @RequestMapping(value = "/deletecaptcha.do",method =RequestMethod.POST )
    public @ResponseBody
    JSONObject deletecaptcha(HttpSession httpSession) {
        httpSession.removeAttribute("Captcha");
        String success = "success";
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success",success);
        return jsonObject;
    }
}

