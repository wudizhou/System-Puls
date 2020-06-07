package com.zx.erpsystem.system.model;

import com.alibaba.fastjson.JSON;

import java.io.Serializable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Message extends JSON implements Map<String, Object>, Cloneable, Serializable, InvocationHandler {
//    private static final long serialVersionUID = -4500748422849176791L;
    private int code;    //返回100表示成功,200表示失败
    private String msg;    //返回提示信息
    private Map<String,Object> extend = new HashMap<String,Object>();  //用户返回给浏览器的数据

    public static Message success() {
        Message result = new Message();
        result.setCode(100);
        result.setMsg("处理成功");
        return result;
    }
    public static Message fail() {
        Message result = new Message();
        result.setCode(200);
        result.setMsg("处理失败");
        return result;
    }

    public Message add(String key,Object value) {
        this.getExtend().put(key, value);
        return this;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getExtend() {
        return extend;
    }

    public void setExtend(Map<String, Object> extend) {
        this.extend = extend;
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        return null;
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    @Override
    public boolean containsKey(Object key) {
        return false;
    }

    @Override
    public boolean containsValue(Object value) {
        return false;
    }

    @Override
    public Object get(Object key) {
        return null;
    }

    @Override
    public Object put(String key, Object value) {
        return null;
    }

    @Override
    public Object remove(Object key) {
        return null;
    }

    @Override
    public void putAll(Map<? extends String, ?> m) {

    }

    @Override
    public void clear() {

    }

    @Override
    public Set<String> keySet() {
        return null;
    }

    @Override
    public Collection<Object> values() {
        return null;
    }

    @Override
    public Set<Entry<String, Object>> entrySet() {
        return null;
    }
}
