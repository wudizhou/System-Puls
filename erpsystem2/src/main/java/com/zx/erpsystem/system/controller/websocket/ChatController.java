package com.zx.erpsystem.system.controller.websocket;

import com.zx.erpsystem.system.model.ActiveUser;
import com.zx.erpsystem.system.model.WsMessage;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-04-18 13:05
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/ChatController")
public class ChatController {
    @Autowired
    private com.zx.erpsystem.system.service.WsMessageService WsMessageService;
    /**
     * 跳转到群聊页面
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/chatSkip.do")
    public String  chatSkip(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                            Model model){
        // 一、 从shiro的session中取activeUser
        Subject subject = SecurityUtils.getSubject();
        // 二、 取出身份信息
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        model.addAttribute("userName", activeUser.getUsercode());
        return "chat";
    }

    /**
     * 聊天历史记录
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/chatHistorySkip.do")
    public String  chatHistorySkip(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                            Model model){
        List<WsMessage> wsMessageList = WsMessageService.queryAllWsMessage();
        if (wsMessageList != null) {
            model.addAttribute("wsMessageList", wsMessageList);
        }
        return "chatHistory";
    }

}
