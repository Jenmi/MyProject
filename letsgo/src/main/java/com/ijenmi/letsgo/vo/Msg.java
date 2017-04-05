package com.ijenmi.letsgo.vo;


/**
 * 用户登录用Bean
 * @author Wilson
 * @version 2.0
 * @since 1.0
 */
public class Msg {
	
	/** ID */
	private Integer id;
	
	/**密码 */
	private boolean status;

	/**反馈信息*/
	private String message;
	

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
