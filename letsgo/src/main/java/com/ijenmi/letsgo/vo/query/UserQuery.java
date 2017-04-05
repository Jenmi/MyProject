/*
 * Powered By [Jenmi]
 * Web Site: http://www.ijenmi.cn 
 * Since 2016 - 2016
 */
package com.ijenmi.letsgo.vo.query;

import java.io.Serializable;

//import org.apache.commons.lang.builder.ToStringBuilder;
//import org.apache.commons.lang.builder.ToStringStyle;


/**
 * @author Jenmi it(a)ijenmi.cn
 * @version 2.0
 * @since 1.0
 */
 
public class UserQuery  implements Serializable {//extends BaseQuery
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** userId */
	private java.lang.Long userId;
	/** loginName */
	private java.lang.String loginName;
	/** password */
	private java.lang.String password;
	/** name */
	private java.lang.String name;
	/** photo */
	private java.lang.String photo;
	/** sex */
	private java.lang.Integer sex;
	/** email */
	private java.lang.String email;
	/** valid */
	private java.lang.Integer valid;
	/** lastUpdateTime */
	private java.util.Date lastUpdateTimeBegin;
	private java.util.Date lastUpdateTimeEnd;
	/** lastLoginTime */
	private java.util.Date lastLoginTimeBegin;
	private java.util.Date lastLoginTimeEnd;

	public java.lang.Long getUserId() {
		return this.userId;
	}
	
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	public java.lang.String getLoginName() {
		return this.loginName;
	}
	
	public void setLoginName(java.lang.String value) {
		this.loginName = value;
	}
	
	public java.lang.String getPassword() {
		return this.password;
	}
	
	public void setPassword(java.lang.String value) {
		this.password = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getPhoto() {
		return this.photo;
	}
	
	public void setPhoto(java.lang.String value) {
		this.photo = value;
	}
	
	public java.lang.Integer getSex() {
		return this.sex;
	}
	
	public void setSex(java.lang.Integer value) {
		this.sex = value;
	}
	
	public java.lang.String getEmail() {
		return this.email;
	}
	
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	public java.lang.Integer getValid() {
		return this.valid;
	}
	
	public void setValid(java.lang.Integer value) {
		this.valid = value;
	}
	
	public java.util.Date getLastUpdateTimeBegin() {
		return this.lastUpdateTimeBegin;
	}
	
	public void setLastUpdateTimeBegin(java.util.Date value) {
		this.lastUpdateTimeBegin = value;
	}	
	
	public java.util.Date getLastUpdateTimeEnd() {
		return this.lastUpdateTimeEnd;
	}
	
	public void setLastUpdateTimeEnd(java.util.Date value) {
		this.lastUpdateTimeEnd = value;
	}
	
	public java.util.Date getLastLoginTimeBegin() {
		return this.lastLoginTimeBegin;
	}
	
	public void setLastLoginTimeBegin(java.util.Date value) {
		this.lastLoginTimeBegin = value;
	}	
	
	public java.util.Date getLastLoginTimeEnd() {
		return this.lastLoginTimeEnd;
	}
	
	public void setLastLoginTimeEnd(java.util.Date value) {
		this.lastLoginTimeEnd = value;
	}
	

}

