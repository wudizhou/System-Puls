package com.zx.erpsystem.system.controller.websocket;

/**
 * MyWebSocketHandler，WebSocket处理器：
 * @author Zhang Zhou
 * @date 2020-03-26 09:19
 */

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.zx.erpsystem.system.model.ActiveUser;
import com.zx.erpsystem.system.model.WsMessage;
import com.zx.erpsystem.system.service.WsMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.*;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;


@Component
public class MyWebSocketHandler implements WebSocketHandler{

//    @Autowired
//    private com.zx.erpsystem.system.service.WsMessageService WsMessageService;
//
//    //当MyWebSocketHandler类被加载时就会创建该Map，随类而生
//    public static final Map<Integer, WebSocketSession> userSocketSessionMap;
//
//    static {
//        userSocketSessionMap = new HashMap<Integer, WebSocketSession>();
//    }
//
//    //握手实现连接后
//    @Override
//    public void afterConnectionEstablished(WebSocketSession webSocketSession) throws Exception {
//        int uid = (Integer) webSocketSession.getAttributes().get("uid");
//        if (userSocketSessionMap.get(uid) == null) {
//            userSocketSessionMap.put(uid, webSocketSession);
//        }
//    }
//
//    //发送信息前的处理
//    @Override
//    public void handleMessage(WebSocketSession webSocketSession, WebSocketMessage<?> webSocketMessage) throws Exception {
//
//        if(webSocketMessage.getPayloadLength()==0) {
//            return;
//        }
//
//        //得到Socket通道中的数据并转化为Message对象
//        WsMessage msg=new Gson().fromJson(webSocketMessage.getPayload().toString(),WsMessage.class);
//
//        Timestamp now = new Timestamp(System.currentTimeMillis());
//        msg.setMessageDate(now);
//        msg.setFromId(msg.getFromId());
//        msg.setFromName(msg.getFromName());
//        msg.setMessageText(msg.getMessageText());
//        msg.setToId(msg.getToId());
//        //将信息保存至数据库
//
////        WsMessageService.addMessage(msg.getFromId(),msg.getFromName(),msg.getToId(),msg.getMessageText(),msg.getMessageDate());
//        WsMessageService.insert(msg);
//        //发送Socket信息
//        sendMessageToUser(msg.getToId(), new TextMessage(new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create().toJson(msg)));
//    }
//
//    @Override
//    public void handleTransportError(WebSocketSession webSocketSession, Throwable throwable) throws Exception {
//
//    }
//
//    /**
//     * 在此刷新页面就相当于断开WebSocket连接,原本在静态变量userSocketSessionMap中的
//     * WebSocketSession会变成关闭状态(close)，但是刷新后的第二次连接服务器创建的
//     * 新WebSocketSession(open状态)又不会加入到userSocketSessionMap中,所以这样就无法发送消息
//     * 因此应当在关闭连接这个切面增加去除userSocketSessionMap中当前处于close状态的WebSocketSession，
//     * 让新创建的WebSocketSession(open状态)可以加入到userSocketSessionMap中
//     * @param webSocketSession
//     * @param closeStatus
//     * @throws Exception
//     */
//    @Override
//    public void afterConnectionClosed(WebSocketSession webSocketSession, CloseStatus closeStatus) throws Exception {
//
//        System.out.println("WebSocket:"+webSocketSession.getAttributes().get("uid")+"close connection");
//        Iterator<Map.Entry<Integer,WebSocketSession>> iterator = userSocketSessionMap.entrySet().iterator();
//        while(iterator.hasNext()){
//            Map.Entry<Integer,WebSocketSession> entry = iterator.next();
//            if(entry.getValue().getAttributes().get("uid")==webSocketSession.getAttributes().get("uid")){
//                userSocketSessionMap.remove(webSocketSession.getAttributes().get("uid"));
//                System.out.println("WebSocket in staticMap:" + webSocketSession.getAttributes().get("uid") + "removed");
//            }
//        }
//    }
//
//    @Override
//    public boolean supportsPartialMessages() {
//        return false;
//    }
//
//    //发送信息的实现
//    public void sendMessageToUser(int uid, TextMessage message)
//            throws IOException {
//        WebSocketSession session = userSocketSessionMap.get(uid);
//        if (session != null && session.isOpen()) {
//            session.sendMessage(message);
//        }
//    }
//这里好像是存储sessionID的，所以并没有和我们后端的用户session对应起来
//最好不要直接用
    private final static List<WebSocketSession> USERS = new ArrayList<>();
    private final static List<ActiveUser> USER_ONLINE = new ArrayList<>();

    @Override
    public void afterConnectionEstablished(WebSocketSession webSocketSession) throws Exception {
        USERS.add(webSocketSession);
        //每次有新的连接，就加入到user集合中
        ActiveUser user = (ActiveUser) webSocketSession.getAttributes().get("ws_user");
        USER_ONLINE.add(user);
        List<String> userNamelist = new ArrayList<>();
        for (ActiveUser u : USER_ONLINE) {
            String userName = u.getUsercode();
            userNamelist.add(userName);
        }

        //String类的format()方法用于创建格式化的字符串以及连接多个字符串对象。
        //这里传到前端的应该是JSON格式
        String messageFormat = "{onlineNum:\"%d\",userName:\"%s\" , msgTyp " +
                ":\"%s\"}";
        String msg = String.format(messageFormat, USERS.size(), userNamelist,
                "notice");

        TextMessage testMsg = new TextMessage(msg + "");
        //确保每个用户信息都能同步到
        for (WebSocketSession wss : USERS) {
            wss.sendMessage(testMsg);
        }
    }

    /**
     * 客户端发送服务器的消息时的处理函数，在这里收到消息之后可以分发消息
     */
    @Autowired
    private WsMessageService WsMessageService;

    @Override
    public void handleMessage(WebSocketSession webSocketSession,
                              WebSocketMessage<?> webSocketMessage) throws Exception {

        String messageFormat = null;
        FileOutputStream output;

        System.err.println(webSocketSession.getAttributes().get("ws_user"));
        //发送消息的时间
        Timestamp now = new Timestamp(System.currentTimeMillis());
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
//        String sentMsgDate = dateFormat.format(new Date());
        ActiveUser user = (ActiveUser) webSocketSession.getAttributes().get("ws_user");
        String msgContent = webSocketMessage.getPayload() + "";
        WsMessage msgContent2=new Gson().fromJson(webSocketMessage.getPayload().toString(),WsMessage.class);
        System.err.println("前端传到后台的数据 " + msgContent);
        JSONObject chat = JSON.parseObject(msgContent);
        //消息的内容
        String msgJSON = chat.get("message").toString();
        //消息的样式
        String msgJSONType = chat.get("type").toString();
        String exit = "exit";
        String chatMsg = "chatMsg";
        String img = "img";

        System.err.println("JSON验证" + chat);
        System.err.println(chat.get("type").toString());

        if (msgJSONType.equals(exit)) {
            messageFormat = "{onlineNum:\"%d\",userName:\"%s\" ,userNameList:\"%s\", msgTyp:\"%s\",sendDate:\"%s\"}";
            //从用户列表中移除已退出的用户
            USER_ONLINE.remove(user);
            List<String> userNamelist = new ArrayList<>();
            for (ActiveUser u : USER_ONLINE) {
                String userName = u.getUsercode();
                userNamelist.add(userName);
            }

            String msg = String.format(messageFormat, USERS.size()-1 ,msgJSON ,userNamelist,"exit",now);
            TextMessage testMsg = new TextMessage(msg + "");
            //确保每个用户信息都能同步到
            for(WebSocketSession wss : USERS) {
                wss.sendMessage(testMsg);
            }

        } else if (msgJSONType.equals(chatMsg)) {
            //将消息保存到数据库
            WsMessage chatMessage = new WsMessage(user.getUserId(),user.getUsercode(),msgContent2.getToId(),
                    msgContent,now);
            System.err.println(chatMessage);
            WsMessageService.insert(chatMessage);

            messageFormat = "{user:\"%s\",sendDate:\"%s\" ," +
                    "sendContent:\"%s\" , msgTyp :\"%s\"}";
            String message = String.format(messageFormat, user.getUsercode(),
                    now, msgJSON , "msg");
            TextMessage toMsg = new TextMessage(message + "");
            //遍历所有的用户，发信息，这个要注意哦，要不然不能做到多人同时聊天
            for (WebSocketSession wss : USERS) {
                wss.sendMessage(toMsg);
            }
        }else if(msgJSONType.equals(img)){
            System.err.println("i'm here");
            //设置图片保存路径
            String filePar = "D:\\erpimages\\";// 文件夹路径
            File myPath = new File( filePar );
            if ( !myPath.exists()){//若此目录不存在，则创建之
                myPath.mkdir();
                System.out.println("创建文件夹路径为："+ filePar);
            }
            output = new FileOutputStream(new File("D:\\erpimages\\"+chat.get("filename").toString().split(":")[0]));
            System.err.println("图片路径"+"D:\\erpimages\\"+chat.get("filename").toString().split(":")[0]);
            output.close();
        }

    }

    @Override
    public void handleTransportError(WebSocketSession webSocketSession,
                                     Throwable throwable) throws Exception {
        USERS.remove(webSocketSession);
    }


    @Override
    public void afterConnectionClosed(WebSocketSession webSocketSession,
                                      CloseStatus closeStatus) throws Exception {
        ActiveUser userRemove = (ActiveUser) webSocketSession.getAttributes().get(
                "ws_user");
        USER_ONLINE.remove(userRemove);
        USERS.remove(webSocketSession);
    }

    @Override
    public boolean supportsPartialMessages() {
        return false;
    }
}
