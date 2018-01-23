package com.ijenmi.letsgo.model;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Blog {
    private Integer blogId;

    private String title;

    private String content;

    private Integer blogBlong;

    private Integer type;

    private Integer status;

    private Integer zanNum;
    private Integer badNum;
    private Integer seeNum;
    @DateTimeFormat(pattern="yyyy-MM-dd")  
    private java.util.Date createDate;

    private java.util.Date updateDate;

    private Integer commentNum;

    private Integer userId;

    private String contentVice;
    
    private List<BlogImg> blogImgs;
    
    private String keywords;
    
	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public List<BlogImg> getBlogImgs() {
		return blogImgs;
	}

	public void setBlogImgs(List<BlogImg> blogImgs) {
		this.blogImgs = blogImgs;
	}

	public Integer getSeeNum() {
		return seeNum;
	}

	public void setSeeNum(Integer seeNum) {
		this.seeNum = seeNum;
	}

	public Integer getBadNum() {
		return badNum;
	}

	public void setBadNum(Integer badNum) {
		this.badNum = badNum;
	}

	public String getContentVice() {
		return contentVice;
	}

	public void setContentVice(String contentVice) {
		this.contentVice = contentVice;
	}

	public Integer getBlogId() {
		return blogId;
	}

	public void setBlogId(Integer blogId) {
		this.blogId = blogId;
	}

	public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getBlogBlong() {
        return blogBlong;
    }

    public void setBlogBlong(Integer blogBlong) {
        this.blogBlong = blogBlong;
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

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Integer getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(Integer commentNum) {
        this.commentNum = commentNum;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}