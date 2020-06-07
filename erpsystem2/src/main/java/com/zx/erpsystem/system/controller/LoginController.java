package com.zx.erpsystem.system.controller;

import com.zx.erpsystem.system.service.UserExtendService;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/loginController")
public class LoginController {
    @Autowired
    private UserExtendService userExtendService;
//    private UserService userService;
    @RequestMapping(value = "/login.do")
    public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                        Model model) {
        /** 如果登陆失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常类的全限定名 */
        System.err.println("------------------LoginController-------------------------------------------");
        String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
        /** 根据shiro返回的异常类路径判断，抛出指定异常信息 */
        if (exceptionClassName != null) {
            if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
                /** 最终会抛给异常处理器 */
                model.addAttribute("message", "抱歉，账号不存在!");
            } else if (IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
                model.addAttribute("message", "抱歉，用户名或密码错误!");
            } else {
                /** 最终在异常处理器生成未知错误 */
                model.addAttribute("message", "未知错误!");
            }
//        UsernamePasswordToken token = new UsernamePasswordToken(user.getLoginName(),user.getPassword().toCharArray());
//        System.err.println("------------------------"+token.toString());
//        if(rememberMe !=null&&rememberMe.equals("1")){
//            token.setRememberMe(true);
//        }
//        try{
//            subject.login(token);
//        }catch (AuthenticationException e){
//            return e.getMessage();
//        }
//        String username =request.getParameter("username");
//        User userGet = userService.queryUserByloginName(”wudizhou“);
//        session.setAttribute("user",userGet);
        }
        /** 此方法不处理登陆成功（认证成功），shiro认证成功会自动跳转到上一个请求路径,登陆失败还到login页面 */
        return "login";
    }

}

