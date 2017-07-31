package com.ijenmi.letsgo.model;

import java.util.Date;

public class BlogImg {
    private Integer imgId;

    private String imgPath;

    private Integer imgType;

    private String imgContent;

    private Date createDate;

    private Integer isDelete;

    private Integer blogId;

    public Integer getImgId() {
        return imgId;
    }

    public void setImgId(Integer imgId) {
        this.imgId = imgId;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath == null ? null : imgPath.trim();
    }

    public Integer getImgType() {
        return imgType;
    }

    public void setImgType(Integer imgType) {
        this.imgType = imgType;
    }

    public String getImgContent() {
        return imgContent;
    }

    public void setImgContent(String imgContent) {
        this.imgContent = imgContent == null ? null : imgContent.trim();
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

	public Integer getBlogId() {
		return blogId;
	}

	public void setBlogId(Integer blogId) {
		this.blogId = blogId;
	}

	@Override
	public String toString() {
		return "BlogImg [imgId=" + imgId + ", imgPath=" + imgPath + ", imgType=" + imgType + ", imgContent="
				+ imgContent + ", createDate=" + createDate + ", isDelete=" + isDelete + ", blogId=" + blogId + "]";
	}
    
}