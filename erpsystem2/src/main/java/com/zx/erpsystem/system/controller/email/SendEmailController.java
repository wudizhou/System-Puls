package com.zx.erpsystem.system.controller.email;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Random;

/**
 * 发送邮件
 * @author Zhang Zhou
 * @date 2020-05-14 11:11
 */
@Controller
@RequestMapping("/email")
public class SendEmailController {
    @Autowired
    private JavaMailSender javaMailSender;
    /**
     * @Value(“#{}”) 表示SpEl表达式通常用来获取bean的属性，或者调用bean的某个方法。当然还有可以表示常量
     *
     * 用 @Value(“${xxxx}”)注解从配置文件读取值的用法
     */
    @Value("${mail.smtp.username}")
    private String emailFrom;

    /**
     * 发送邮件的整体过程：
     * 输入账号，输入邮箱；
     * 点击按钮获取验证码；
     * 判断邮箱是否为空，判断邮箱格式是否正确（这里按“xxx.@xx.com”格式）；
     * ajax异步请求控制器查找数据库中是否有该邮箱（注意：这里是没这么多邮箱，实际开发中应该要判断邮箱与账号一一对应）；
     * 控制器调用services方法调用对应dao访问数据库查找数据；
     * 控制器根据查找的数据返回请求结果；
     * false拒绝发送验证码，弹窗提示“该邮箱不能获取验证码”，true则异步请求控制器发送验证码；
     * 控制器随机生成一组6位数验证码并存入session中，根据收到的邮箱地址发送验证码；
     * 设置计时器，超过一分钟后异步请求删除session中的验证码(因为对session的生命周期不熟悉，所以这里调用方法来删除)，并弹窗提示“请重新获取验证码”；
     * 输入新密码和再次确认密码，两次密码一致且所有输入框不为空后释放提交按钮；
     * 点击按钮提交表单；
     * 判断输入的验证码和session中的一致，则更新数据库中的密码
     * @param httpSession
     * @param email
     * @return
     */
    @RequestMapping(value = "/send.do", method = RequestMethod.GET)
    public @ResponseBody
    JSONObject senMsg(HttpSession httpSession, @RequestParam String email){
        //生成六位数验证码
        String Captcha = String.valueOf(new Random().nextInt(899999) + 100000);
        System.err.println("------sendmsg"+Captcha);
        httpSession.setAttribute("Captcha",Captcha);
        SimpleMailMessage message = new SimpleMailMessage();
        //发件人的邮箱地址
        message.setFrom(emailFrom);
        //收件人的邮箱地址
        message.setTo(email);
        //邮件主题
        message.setSubject("ERPSystem的忘记密码的验证");
        //邮件内容
        message.setText("验证内容："+Captcha);
        //发送邮件
        javaMailSender.send(message);
        JSONObject jsonObject = new JSONObject();
        String success = "success";
        jsonObject.put("success",success);
        return jsonObject;
//        return true;
    }

}
