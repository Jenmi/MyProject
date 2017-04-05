package com.ijenmi.letsgo.model;

import java.util.Date;

public class Saysay {
    private Integer saysayId;

    private String content;

    private Integer type;

    private Integer status;

    private Integer zanNum;

    private Date createDate;

    private Integer userId;

    public Integer getSaysayId() {
        return saysayId;
    }

    public void setSaysayId(Integer saysayId) {
        this.saysayId = saysayId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getZanNum() {
        return zanNum;
    }

    public void setZanNum(Integer zanNum) {
        this.zanNum = zanNum;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}