package com.ijenmi.letsgo.model;

import java.util.Date;

public class SayComment {
    private Integer commentId;

    private Integer userId;

    private String anonymous;

    private String content;

    private Date createDate;

    private Integer isDelete;

    private Integer atchId;

    private Integer type;

    private Integer saysayId;

    private Integer bestUp;

    private Integer blongUp;

    private Integer orderIndex;

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAnonymous() {
        return anonymous;
    }

    public void setAnonymous(String anonymous) {
        this.anonymous = anonymous == null ? null : anonymous.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public Integer getAtchId() {
        return atchId;
    }

    public void setAtchId(Integer atchId) {
        this.atchId = atchId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getSaysayId() {
        return saysayId;
    }

    public void setSaysayId(Integer saysayId) {
        this.saysayId = saysayId;
    }

    public Integer getBestUp() {
        return bestUp;
    }

    public void setBestUp(Integer bestUp) {
        this.bestUp = bestUp;
    }

    public Integer getBlongUp() {
        return blongUp;
    }

    public void setBlongUp(Integer blongUp) {
        this.blongUp = blongUp;
    }

    public Integer getOrderIndex() {
        return orderIndex;
    }

    public void setOrderIndex(Integer orderIndex) {
        this.orderIndex = orderIndex;
    }
}