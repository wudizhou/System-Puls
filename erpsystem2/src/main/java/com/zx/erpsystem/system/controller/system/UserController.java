package com.zx.erpsystem.system.controller.system;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.model.UserExtend;
import com.zx.erpsystem.system.service.UserExtendService;
import com.zx.erpsystem.system.service.UserService;
import com.zx.erpsystem.system.utils.util.JedisUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-05-10 09:56
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/userController")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    UserExtendService userExtendService;
    private static  final String USER_PAGE="view/system/userMangment";
    @RequestMapping(value = "/userShow.do")
     public String userShow(Model model){
        System.err.println("------------------userController------List-------------------------------------------");
        //从数据库查询所有商品
        List<UserExtend> userList = userExtendService.queryAllUe();
        JSONArray jsonArray = JSONObject.parseArray(JSON.toJSONString(userList));
         //把json数组转换成String类型
        String json = jsonArray.toJSONString();
        userList.forEach(UserExtend -> {
            //判读是否有缓存存在
            boolean exits=JedisUtils.existsObject(UserExtend.getUserId().toString());
            System.err.println(exits);
            if(exits==false){
                JedisUtils.set(UserExtend.getUserId().toString(),json,0);
//                JedisUtils.listAdd(UserExtend.getUserId().toString(),json);
            }
        });
        if (userList != null) {
            model.addAttribute("userList", userList);
        }
         return USER_PAGE;
     }
    /**
     * 根据路径来将id值传入
     * @param parameter
     * @return
     */
    @RequiresPermissions("sys:user:getUserExtend")
    @ResponseBody
    @RequestMapping(value="/getUserExtend.do",method= RequestMethod.POST)
    public JSONObject getUserExtend(@RequestParam("id") String parameter) {
        System.err.println("------------------getUserExtend------List-------------------------------------------");
        JSONObject jsonObject = new JSONObject();
        System.err.println("----------"+jsonObject);
        return jsonObject;
    }

    /**
     * 修改
     * @param request
     * @return
     */
    @RequiresPermissions("sys:user:update")
    @ResponseBody
    @RequestMapping(value = "/saveUserExtend.do",method = RequestMethod.POST)
    public JSONObject saveUserExtend(HttpServletRequest request ) {
        JSONObject jsonObject = new JSONObject();
        System.err.println("------------------saveUserExtend------List-------------------------------------------");
        return  jsonObject;
    }

    /**
     * 增加
     * @param request
     * @return
     */
    @RequiresPermissions("sys:user:add")
    @ResponseBody
    @RequestMapping(value = "/addUserExtend.do",method = RequestMethod.POST)
    public JSONObject addUserExtend(HttpServletRequest request ) {
        System.err.println("------------------addUserExtend------List-------------------------------------------");
        JSONObject jsonObject = new JSONObject();
        return  jsonObject;
    }

    /**
     * 删除单项
     * @param pickingOutboundNo
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequiresPermissions("sys:user:delete")
    @RequestMapping(value = "/userExtendDelete.do")
    public String userExtendDelete(Integer pickingOutboundNo, Model model, HttpServletRequest request, HttpServletResponse response) {
        System.err.println("------------------userExtendDelete------delete-------------------------------------------");
        return USER_PAGE;
    }
}
