package com.zx.erpsystem.system.controller.websocket;

/**
 * MyHandShakeInterceptor 是websocket的拦截器
 * @author Zhang Zhou
 * @date 2020-03-26 09:17
 */

import com.zx.erpsystem.system.model.ActiveUser;
import org.apache.shiro.SecurityUtils;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;


/**
 * websocket握手拦截器
 * 拦截握手前，握手后的两个切面
 */
@Component
public class MyHandShakeInterceptor implements HandshakeInterceptor {



        //    @Override
//    public boolean beforeHandshake(ServerHttpRequest serverHttpRequest, ServerHttpResponse serverHttpResponse, WebSocketHandler webSocketHandler, Map<String, Object> map) throws Exception {
////        System.out.println("Websocket:用户[ID:" + ((ServletServerHttpRequest) serverHttpRequest).getServletRequest().getSession(false).getAttribute("user") + "]已经建立连接");
////        if (serverHttpRequest instanceof ServletServerHttpRequest) {
////            ServletServerHttpRequest servletRequest = (ServletServerHttpRequest) serverHttpRequest;
////            HttpSession session = servletRequest.getServletRequest().getSession(false);
////            // 标记用户
////            User user = (User) session.getAttribute("user");
////            if(user!=null){
////                //为服务器创建WebSocketSession做准备
////                map.put("ws_user", user.getUserId());
////                System.out.println("用户id："+user.getUserId()+" 被加入");
////            }else{
////                System.out.println("user为空");
////                return false;
////            }
////        }
//        return true;
//    }
        @Override
        public boolean beforeHandshake (ServerHttpRequest serverHttpRequest, ServerHttpResponse
        serverHttpResponse, WebSocketHandler webSocketHandler, Map < String, Object > map) throws Exception {
            if (serverHttpRequest instanceof ServletServerHttpRequest) {
                HttpServletRequest servletRequest = ((ServletServerHttpRequest) serverHttpRequest).getServletRequest();
                ActiveUser user = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
//                ActiveUser user = (ActiveUser) servletRequest.getSession().getAttribute("activeUser");
                //这里给map赋值 相当于websockethandler的afterConnectionEstablished方法里的WebSocketSession
                //key是session，value是变量
                map.put("ws_user", user);
                System.err.println(user);
                return true;
            }
            return true;
        }


        @Override
        public void afterHandshake (ServerHttpRequest serverHttpRequest, ServerHttpResponse
        serverHttpResponse, WebSocketHandler webSocketHandler, Exception e){

            System.err.println("afterHandshake");
        }
    }

