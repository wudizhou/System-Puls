package com.zx.erpsystem.system.controller.websocket;

/**
 * MyWebSocketConfig主要负责配置websocket的处理器和握手拦截器
 * @author Zhang Zhou
 * @date 2020-03-26 09:16
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

/**
 * Component注解告诉SpringMVC该类是一个SpringIOC容器下管理的类
 * 其实@Controller, @Service, @Repository是@Component的细化
 * @author wudzh
 */
@Component
@EnableWebMvc
@EnableWebSocket
public class MyWebSocketConfig extends WebMvcConfigurerAdapter implements WebSocketConfigurer {

//    @Autowired
//    private MyWebSocketHandler handler;
//    @Autowired
//    private MyHandShakeInterceptor myHandShakeInterceptor;
//
//    @Override
//    public void registerWebSocketHandlers(WebSocketHandlerRegistry webSocketHandlerRegistry) {
//        System.err.println("registerWebSocketHandlers");
//
//        //添加websocket处理器，添加握手拦截器
//        webSocketHandlerRegistry.addHandler(handler, "/ws").addInterceptors(myHandShakeInterceptor);
//
//        //添加websocket处理器，添加握手拦截器
//        webSocketHandlerRegistry.addHandler(handler, "/ws/sockjs").addInterceptors(myHandShakeInterceptor).withSockJS();
//    }
    @Autowired
    private MyWebSocketHandler myWebSocketHandler;

    private static final String LINK_URI = "websocket.do";
    //添加websocket处理器，添加握手拦截器  拦截器先执行 然后到处理器
    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry webSocketHandlerRegistry) {
        webSocketHandlerRegistry.addHandler(myWebSocketHandler,LINK_URI).addInterceptors(new MyHandShakeInterceptor());
    }
}

