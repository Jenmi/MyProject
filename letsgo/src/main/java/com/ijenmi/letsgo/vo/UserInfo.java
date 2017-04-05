package com.ijenmi.letsgo.vo;


/**
 * 用户登录用Bean
 * @author Wilson
 * @version 2.0
 * @since 1.0
 */
public class UserInfo {
	
	/** 员工ID */
	private Integer staffId;
	
    /** 用户名 */
	private String loginName;

	/**密码 */
	private String pwd;

	/**反馈信息*/
	private String message;
	

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Integer getStaffId() {
		return staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}
	
	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
