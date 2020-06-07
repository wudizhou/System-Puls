package com.zx.erpsystem.system.model;

import java.io.Serializable;
import java.util.Date;

/**
 * (SysLog)实体类
 *
 * @author zhangzhou
 * @since 2020-04-22 19:14:21
 */
public class SysLog implements Serializable {
    private static final long serialVersionUID = -41658683100218514L;
    /**
    * 日志id
    */
    private Long logId;
    /**
    * 日志类型(1：接入日志；2：错误日志)
    */
    private String logType;
    /**
    * 日志标题
    */
    private String logTitle;
    /**
    * 操作用户的IP地址
    */
    private String logRemoteaddr;
    /**
    * 操作的URI
    */
    private String logRequesturl;
    /**
    * 操作的方式
    */
    private String logMethod;
    /**
    * 操作提交的数据
    */
    private String logParams;
    /**
    * 操作用户代理信息
    */
    private String logUseragent;
    /**
    * 异常信息
    */
    private String logException;
    /**
    * 开始日期
    */
    private Date logBegindate;
    /**
    * 结束日期
    */
    private Date logEnddate;
    /**
    * 删除标记（0：正常；1：删除；2：审核）
    */
    private String delFlg;


    public Long getLogId() {
        return logId;
    }

    public void setLogId(Long logId) {
        this.logId = logId;
    }

    public String getLogType() {
        return logType;
    }

    public void setLogType(String logType) {
        this.logType = logType;
    }

    public String getLogTitle() {
        return logTitle;
    }

    public void setLogTitle(String logTitle) {
        this.logTitle = logTitle;
    }

    public String getLogRemoteaddr() {
        return logRemoteaddr;
    }

    public void setLogRemoteaddr(String logRemoteaddr) {
        this.logRemoteaddr = logRemoteaddr;
    }

    public String getLogRequesturl() {
        return logRequesturl;
    }

    public void setLogRequesturl(String logRequesturl) {
        this.logRequesturl = logRequesturl;
    }

    public String getLogMethod() {
        return logMethod;
    }

    public void setLogMethod(String logMethod) {
        this.logMethod = logMethod;
    }

    public String getLogParams() {
        return logParams;
    }

    public void setLogParams(String logParams) {
        this.logParams = logParams;
    }

    public String getLogUseragent() {
        return logUseragent;
    }

    public void setLogUseragent(String logUseragent) {
        this.logUseragent = logUseragent;
    }

    public String getLogException() {
        return logException;
    }

    public void setLogException(String logException) {
        this.logException = logException;
    }

    public Date getLogBegindate() {
        return logBegindate;
    }

    public void setLogBegindate(Date logBegindate) {
        this.logBegindate = logBegindate;
    }

    public Date getLogEnddate() {
        return logEnddate;
    }

    public void setLogEnddate(Date logEnddate) {
        this.logEnddate = logEnddate;
    }

    public String getDelFlg() {
        return delFlg;
    }

    public void setDelFlg(String delFlg) {
        this.delFlg = delFlg;
    }

}