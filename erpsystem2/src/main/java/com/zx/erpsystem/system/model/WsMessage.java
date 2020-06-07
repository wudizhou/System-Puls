package com.zx.erpsystem.system.model;

import java.sql.Timestamp;

/**
 * @author Zhang Zhou
 * @date 2020-03-26 10:03
 */
public class WsMessage {
    private int messageId;
    private int fromId;
    private String fromName;
    private int toId;
    private String messageText;
    private Timestamp messageDate;

    public WsMessage() {
    }

    public WsMessage(int messageId,Timestamp messageDate,String messageText) {
        this.messageId = messageId;
        this.messageText = messageText;
        this.messageDate = messageDate;
    }

    public WsMessage(int fromId, String fromName, int toId, String messageText, Timestamp messageDate) {
        this.fromId = fromId;
        this.fromName = fromName;
        this.toId = toId;
        this.messageText = messageText;
        this.messageDate = messageDate;
    }


    public int getMessageId() {
        return messageId;
    }

    public void setMessageId(int messageId) {
        this.messageId = messageId;
    }

    public int getFromId() {
        return fromId;
    }

    public void setFromId(int fromId) {
        this.fromId = fromId;
    }

    public String getFromName() {
        return fromName;
    }

    public void setFromName(String fromName) {
        this.fromName = fromName;
    }

    public int getToId() {
        return toId;
    }

    public void setToId(int toId) {
        this.toId = toId;
    }

    public String getMessageText() {
        return messageText;
    }

    public void setMessageText(String messageText) {
        this.messageText = messageText;
    }

    public Timestamp getMessageDate() {
        return messageDate;
    }

    public void setMessageDate(Timestamp messageDate) {
        this.messageDate = messageDate;
    }

    @Override
    public String toString() {
        return "Message{" +
                "messageId=" + messageId +
                ", fromId=" + fromId +
                ", fromName='" + fromName + '\'' +
                ", toId=" + toId +
                ", messageText='" + messageText + '\'' +
                ", messageDate=" + messageDate +
                '}';
    }
}

